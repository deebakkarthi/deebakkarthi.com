---
title: Proven rules that are still missing in HARM
date:  2026-05-21T12:59:51-04:00
tags:
mathjax: false
---

```systemverilog
proven, i_ras.stack_q[1].valid,i_ras.stack_q[0].valid
proven, i_ras.stack_q[1].valid,i_ras.data_o.valid
proven, i_ras.stack_q[1].valid,ras_predict.valid
proven, i_instr_queue.gen_instr_fifo[0].i_fifo_instr_data.empty_o,instr_queue_ready
proven, i_instr_queue.gen_instr_fifo[0].i_fifo_instr_data.empty_o,i_instr_queue.ready_o
proven, i_instr_queue.gen_instr_fifo[0].i_fifo_instr_data.empty_o,icache_dreq_o.req
proven, i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.empty_o,instr_queue_ready
proven, i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.empty_o,i_instr_queue.ready_o
proven, i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.empty_o,icache_dreq_o.req
proven, i_instr_queue.instr_queue_empty[0],instr_queue_ready
proven, i_instr_queue.instr_queue_empty[0],i_instr_queue.ready_o
proven, i_instr_queue.instr_queue_empty[0],icache_dreq_o.req
proven, i_instr_queue.instr_queue_empty[1],instr_queue_ready
proven, i_instr_queue.instr_queue_empty[1],i_instr_queue.ready_o
proven, i_instr_queue.instr_queue_empty[1],icache_dreq_o.req
proven, i_ras.stack_d[0].valid,i_ras.stack_q[0].valid
proven, i_ras.stack_d[0].valid,i_ras.data_o.valid
proven, i_ras.stack_d[0].valid,ras_predict.valid
proven, i_ras.stack_d[1].valid,i_ras.stack_q[0].valid
proven, i_ras.stack_d[1].valid,i_ras.stack_d[0].valid
proven, i_ras.stack_d[1].valid,i_ras.data_o.valid
proven, i_ras.stack_d[1].valid,ras_predict.valid
proven, i_ras.stack_d[1].valid,i_ras.stack_q[1].valid
proven, i_scoreboard.mem_n[0].sbe.use_imm,i_scoreboard.mem_q[0].sbe.use_imm
proven, no_st_pending_o,lsu_commit_ready_o
```