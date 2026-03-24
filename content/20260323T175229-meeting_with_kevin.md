---
title: Meeting Notes
date:  2026-03-23T17:52:29-04:00
tags:
mathjax: false
---

| assertion                           | Reason                                                 |
| ----------------------------------- | ------------------------------------------------------ |
| `fifo_not_empty_after_write`          | Assumed rd_en and wr_en won't be high at the same time |
| `paddr_stable_during_enable`          | `$stable` at reset requires additional config          |
| `pwrite_stable_during_enable`         | `$stable` at reset requires additional config          |
| `pwdata_stable_during_write_enable`   | `$stable` at reset requires additional config          |
| `fifo_tx_rd_en_low_in_delay_bytes`    |                                                        |
| `penable_requires_pselx`              | Assertions on 2 Input signals                          |
| `penable_after_pselx`                 |  Assertions on 2 Input signals                                                       |
| `penable_requires_pselx`              |   Assertions on 2 Input signals                                                      |
| `pselx_before_penable`                |   Assertions on 2 Input signals                                                      |
| `pslverr_requires_penable_and_pready` | Assertions on 2 Input signals                                                        |
| `tx_write_not_when_full`              | WR_EN logic doesn't have TX_FULL to disable it         |
| `tx_read_not_when_empty`              | RD_EN logic doesn't take TX_EMPTY to disable it        | 
| `rx_read_not_when_empty`              |  RD_EN logic doesn't take TX_EMPTY to disable it                                                      |
| `paddr_stable_during_enable`          | `$stable` at reset requires additional config          |
| `pwrite_stable_during_enable`         | `$stable` at reset requires additional config          |
| `pwdata_stable_during_write_enable`   | `$stable` at reset requires additional config          |


# Why are the assertions wrong?


```verilog
 // After reset deasserted and one write, FIFO is no longer empty
 // -------------------------------------------------------------------
 fifo_not_empty_after_write: assert property (
     @(posedge clock) disable iff (reset)
     (f_empty && wr_en && !f_full) |=> (!f_empty)
 );
```
![](../assets/Pasted%20image%2020260323175959.png)

```verilog
//Counter
always@(posedge clock)
begin
        if (reset)
        begin
                counter <= {(AWIDTH){1'b0}};
        end
        else
        begin
                if (rd_en && !f_empty && !wr_en)
                begin
                        counter <= w_counter;
                end
                else if (wr_en && !f_full && !rd_en)
                begin
                        counter <= w_counter;
                end
        end
end

 assign w_counter = (rd_en && !f_empty && !wr_en)? counter - 4'd1: (wr_en && !f_full && !rd_en)? counter + 4'd1: w_counter ;
```

Should the LLM have thought of this edge case?

Or are we missing an assumption?



# Missing assumption

```verilog
// -------------------------------------------------------------------
// APB protocol: PENABLE must follow PSELx
// -------------------------------------------------------------------

penable_requires_pselx: assert property (
	@(posedge PCLK) disable iff (!PRESETn)
	PENABLE |-> PSELx
);
```

They are both inputs. Why would it generate constraints on that?


# Wrong specification

```verilog
 paddr_stable_during_enable: assert property (
	  @(posedge PCLK) disable iff (!PRESETn)
	  (PSELx && PENABLE) |-> $stable(PADDR)
  );
```

`$stable` fails on the first clock cycle
Should always uses ##!


# Notes
- Try fixing stable
- Ask the LLM to not generate the input assumptions for the top module