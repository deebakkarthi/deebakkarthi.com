---
title: BPS with stage split
date:  2026-05-09T14:23:34-04:00
tags:
mathjax: true
---

# BPS Frontend Results
- BPS generated 875 assertions out of which 133 (15.2%) were proven and 742 (84.8%) had CEX.
- BPS was given a template to mine only $G(A \rightarrow X(B))$
- The entire process of mining and proving took *46 minutes*
- The number of rules mined per file is as follows:
	- `program00.vcd`(Directed test): 625
	- `program01.vcd`(`csmith`): 241
	- `program11.vcd`(`csmith`): 9
- **No rules** were generated from the other files
- `program11.vcd` has a size of 5.2 MiB which is different from the other `csmith` traces, which are, on average, 450 MiB
- `program00.vcd` is the largest at 3.4 GiB

# Process
- BPS was set to just focus on *232* frontend signals
- I had to make some changes to the signal names given in `frontend_config_corner_cases.xml`
	- Parameters such as `i_frontend.i_instr_queue.gen_instr_fifo[0].i_fifo_instr_data.FALL_THROUGH`, `i_frontend.i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.FALL_THROUGH` had to be removed
	- There were a lot of signals which should be indexed but were not
		- Example: `padded_input[0]` was given as `padded_input_0` in the `.xml` file
		- I changed all of them to be the former
- BPS was given the following
```systemverilog
property template<signal A, signal B> globally_always_next_cycler;
    (( A |=> B ));
endproperty
```
- I believe this is roughly equivalent to the template given to HARM, which was 
	- `G(P0 -> X(P1))`
- The entire process took 46 minutes
![](../assets/SCR-20260509-nrpd.png)
- 15.2%/84.8% proven:cex ratio with 875 assertions
![](../assets/Pasted%20image%2020260509155852.png)
- Looking at the time taken, we see a huge difference in the mean and median values. Around 400 rules are proved within a second and the other 400 take up to 30 minutes
![](../assets/Pasted%20image%2020260509160826.png)

- You can see the rules at [bps_frontend_with_template](bps_frontend_with_template.html)

# Comments
- I can try to use the `implication` tactic of BPS. Right now the template is defined on **signals** not SVA expressions

 $G(A \rightarrow X(B))$ 

![](../assets/Pasted%20image%2020260509164314.png)	

- The template essentially does the following algorithm
```python
candidates = set()
rejection = set()
# Loop through all signal
for signal in signals:
	# Loop through a signal's trace
	for value, timestep in signal:
		# if high
		if value == 1:
			# check for other signals that go high in the next cycle
			# Only check the remaining signals
			for other_signal in (set_difference(signals, rejection)):
				if other_signal[timestep+1] == 1:
					candidates.add(other_signal)
				else:
					# If a signal goes low even once, we don't have to check it again
					candidates.remove(other_signal)
					rejection.add(other_signal)
```

- This means that a constant signal can be matched with all other signals and produce a rule and any other signal that matches should essentially be one that is phase shifted by 1

- This leads me to believe using `implication` might be better. I don't know what it does under the hood but it may be able to generate implications on **expressions** rather than **signals**. It says `expr` but it also says *scalars*. So this might or might not be the same as our template.

![](../assets/Pasted%20image%2020260509162938.png)