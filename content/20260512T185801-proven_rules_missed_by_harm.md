---
title: Proven Rules Missed By Harm
date: 2026-05-12T18:58:01-04:00
tags:
mathjax: false
---
```systemverilog
fence_i_o |-> ##1 commit_lsu_ready_i
fence_o |-> ##1 commit_lsu_ready_i
no_st_pending_i |-> ##1 commit_lsu_ready_i
flush_i |-> ##1 flu_ready_i
flush_i |-> ##1 lsu_ready_i
no_st_pending_o |-> ##1 lsu_commit_ready_o
i_ras.stack_q[1].valid |-> ##1 ras_predict.valid
i_ras.stack_q[1].valid |-> ##1 i_ras.data_o.valid
i_ras.stack_q[1].valid |-> ##1 i_ras.stack_q[0].valid
i_instr_queue.gen_instr_fifo[0].i_fifo_instr_data.empty_o |-> ##1 i_instr_queue.ready_o
i_instr_queue.gen_instr_fifo[0].i_fifo_instr_data.empty_o |-> ##1 icache_dreq_o.req
i_instr_queue.gen_instr_fifo[0].i_fifo_instr_data.empty_o |-> ##1 instr_queue_ready
i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.empty_o |-> ##1 i_instr_queue.ready_o
i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.empty_o |-> ##1 icache_dreq_o.req
i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.empty_o |-> ##1 instr_queue_ready
i_instr_queue.instr_queue_empty[0] |-> ##1 i_instr_queue.ready_o
i_instr_queue.instr_queue_empty[0] |-> ##1 icache_dreq_o.req
i_instr_queue.instr_queue_empty[0] |-> ##1 instr_queue_ready
i_instr_queue.instr_queue_empty[1] |-> ##1 i_instr_queue.ready_o
i_instr_queue.instr_queue_empty[1] |-> ##1 icache_dreq_o.req
i_instr_queue.instr_queue_empty[1] |-> ##1 instr_queue_ready
i_ras.stack_d[0].valid |-> ##1 ras_predict.valid
i_ras.stack_d[0].valid |-> ##1 i_ras.data_o.valid
i_ras.stack_d[0].valid |-> ##1 i_ras.stack_q[0].valid
i_ras.stack_d[1].valid |-> ##1 ras_predict.valid
i_ras.stack_d[1].valid |-> ##1 i_ras.data_o.valid
i_ras.stack_d[1].valid |-> ##1 i_ras.stack_q[1].valid
i_ras.stack_d[1].valid |-> ##1 i_ras.stack_d[0].valid
i_ras.stack_d[1].valid |-> ##1 i_ras.stack_q[0].valid
i_re_name.flush_i |-> ##1 flu_ready_i
i_re_name.flush_i |-> ##1 lsu_ready_i
i_scoreboard.flush_i |-> ##1 flu_ready_i
i_scoreboard.flush_i |-> ##1 lsu_ready_i
i_scoreboard.mem_n[0].sbe.use_imm |-> ##1 i_scoreboard.mem_q[0].sbe.use_imm
```