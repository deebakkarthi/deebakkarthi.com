---
title: 2026-01-21 Assertion Gen
date:  2026-01-21T17:46:13-05:00
tags:
mathjax: false
---

# HARM results
Doing some `awk` magic we get the following
```bash
awk -F, 'NR > 1 {printf "%s, %.2f\n", $1, $3/$2*100}' results.csv | sort --field-separator=, -g -k2 --reverse
```

| benchmark                         | Proven % | 
| --------------------------------- | -------- |
| `tcReset.v`                       | 80.56    |
| `clean_rst.v`                     | 66.67    |
| `qtwosComp.v`                     | 63.78    |
| `synchronizer.v`                  | 58.33    |
| `rptr_handler.v`                  | 54.37    |
| `crc_control_unit.v`              | 52.70    |
| `uartTrans.v`                     | 50.26    |
| `mtx_trps_8x8_dpsram.v`           | 49.87    |
| `eth_clockgen.v`                  | 41.37    |
| `uartRec.v`                       | 40.64    |
| `control_unit.v`                  | 39.35    |
| `signed_mult_const_asic.v`        | 35.77    |
| `can_ibo.v`                       | 31.53    |
| `rxClkgen.v`                      | 30.00    |
| `inputReg.v`                      | 29.18    |
| `ack_counter.v`                   | 27.30    |
| `variableresetrandomwalkfilter.v` | 27.27    |
| `byteNegator.v`                   | 26.37    |
| `rxLinkFaultState.v`              | 25.30    |
| `dpll.v`                          | 25.00    |
| `fht_bfly.v`                      | 24.46    |
| `fht_bfly_noFF.v`                 | 24.14    |
| `dual_port_ram.v`                 | 23.51    |
| `can_register.v`                  | 23.19    |
| `outputReg.v`                     | 22.75    |
| `fht_1d_x8.v`                     | 22.28    |
| `signed_mult_const_fpga.v`        | 22.25    |
| `ge_1000baseX_mdio.v`             | 21.70    |
| `can_register_asyn.v`             | 21.68    |
| `cavlc_fsm.v`                     | 21.35    |
| `eth_crc.v`                       | 20.52    |
| `Phy_sim.v`                       | 20.32    |
| `can_register_syn.v`              | 20.32    |
| `Ramdon_gen.v`                    | 20.24    |
| `dff_3_pipe.v`                    | 20.24    |
| `eth_l3_checksum.v`               | 20.01    |
| `can_register_asyn_syn.v`         | 19.66    |
| `rxStateMachine.v`                | 19.07    |
| `counter.v`                       | 19.07    |
| `ramBit.v`                        | 18.59    |
| `wptr_handler.v`                  | 17.74    |
| `PSGOutputSummer.v`               | 17.66    |
| `bit_reversal.v`                  | 17.39    |
| `apb.v`                           | 16.94    |
| `can_crc.v`                       | 16.47    |
| `ca_prng.v`                       | 16.44    |
| `ppReg1.v`                        | 16.06    |
| `MAC_tx_Ctrl.v`                   | 15.95    |
| `qmult.v`                         | 15.82    |
| `PSGFilter.v`                     | 14.87    |
| `PSGShaper.v`                     | 14.49    |
| `qadd.v`                          | 14.33    |
| `eth_random.v`                    | 13.86    |
| `cavlc_read_levels.v`             | 13.84    |
| `PSGMasterVolumeControl.v`        | 13.60    |
| `ramByte.v`                       | 13.50    |
| `reg_int_sim.v`                   | 13.41    |
| `cavlc_read_total_zeros.v`        | 12.64    |
| `node.v`                          | 12.31    |
| `PSGChannelSummer.v`              | 12.29    |
| `eth_fifo.v`                      | 12.12    |
| `eth_rxaddrcheck.v`               | 12.03    |
| `bitNegator.v`                    | 12.00    |
| `cavlc_len_gen.v`                 | 11.94    |
| `key_expander.v`                  | 11.87    |
| `mux4to1.v`                       | 10.77    |
| `RMON_addr_gen.v`                 | 10.57    |
| `ge_1000baseX_sync.v`             | 10.24    |
| `crc_comb.v`                      | 10.13    |
| `eth_cop.v`                       | 9.53     |
| `MAC_rx_ctrl.v`                   | 9.43     |
| `rxNumCounter.v`                  | 9.29     |
| `eth_outputcontrol.v`             | 9.27     |
| `fpu_add.v`                       | 9.04     |
| `fifo_mem.v`                      | 8.97     |
| `fpu_exceptions.v`                | 8.92     |
| `ge_1000baseX_rx.v`               | 8.54     |
| `rxStatModule.v`                  | 8.36     |
| `flow_ctrl.v`                     | 8.31     |
| `eth_shiftreg.v`                  | 8.12     |
| `host_interface.v`                | 8.11     |
| `eth_txcounters.v`                | 8.09     |
| `tcLoad.v`                        | 7.76     |
| `accumulatorMUX.v`                | 7.67     |
| `can_btl.v`                       | 7.46     |
| `eth_miim.v`                      | 7.02     |
| `RMON_ctrl.v`                     | 6.78     |
| `eth_receivecontrol.v`            | 6.26     |
| `phasecomparator.v`               | 6.25     |
| `fht_8x8_core.v`                  | 6.03     |
| `can_fifo.v`                      | 5.99     |
| `cavlc_read_total_coeffs.v`       | 5.88     |
| `encoder_8b10b.v`                 | 5.66     |
| `eth_transmitcontrol.v`           | 5.14     |
| `host_interface_aes.v`            | 5.12     |
| `fpu_sub.v`                       | 5.05     |
| `Phy_int.v`                       | 5.04     |
| `can_acf.v`                       | 4.96     |
| `decoder_8b10b.v`                 | 4.81     |
| `PSGBusArb.v`                     | 4.67     |
| `freqdivider.v`                   | 0.00     |

# Does [AssertionBench](pulavarthiAssertionBenchBenchmarkEvaluate2025.md) run HARM correctly?
What is the meaning of these directories?
```bash
AssertionBench_Eval_page.jpg
AssertionBench_Eval.pdf
Goldmine_results/
harm_results/
Jasper_gpt_results/
Jasper_llama_results/
Jasper_results/
python_scripts/
README.md
requirements_gpt.txt
requirements_llama.txt
results.csv
verified_assertions/
```
I am not sure what `verified_assertions/` is supposed to be? HARM and Goldmine each have their own directories. And it is not verified. It also has disproven ones.


# `AccumulatorMux`
Let me take a look at this benchmark. HARM has generated around 20k properties for this. Out of that only 1k is proven. Does this proven imply that it is also covered?


# HARM Config

```xml
 <sort name="causality" exp="1-afct/traceLength"/>
 <sort name="frequency" exp="atct/traceLength"/>
```


They are only sorting the entries and not filtering anything. So it is possible to have some antecedents that don't hold even in the trace

This seems to be generated automatically using HARM

Can we drop all assertions which don't have a single `atc{t, f, u}` metric?
Is that a fair assumption to make? If our trace has some level of representation then it is very plausible that we see at least one  instance where the antecedent hold
