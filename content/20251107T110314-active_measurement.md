---
title: Active Measurement
date:  2025-11-07T11:03:14-05:00
tags:
- uva
---

# Motivation
- Computational limitations instead of resolution
- Distributed network of observational sensors

ML prediction to scientific insights

# Bird Migration
- Weather radars to track birds. They travel at night, we cannot see them but radars are sensitive enough to see them
- Dark Ecology
	- Can we extract something from the 25 year archival data?
- Extract birds from the radar data. They were not measuring birds intentionally but they can be extracted form the data
- Plot biomass density vs direction, speed, height 
## Challenges
- Big data
	- Huge number of radars
	- Resolution heterogeneity
	- Remove weather contamination. It is not a problem other way around (biomass so small compared to weather that they can ignore them but it doesn't work that way for biomass)
		- MistNet. CNN for weather radar
		- Produce mask from radar measurement data
		- Training data?
			- Dual polarization radar helped with this to label 
			- Rain circular birds not
			- After 2013 the sensors does the classification do not need Mistnet
		- Spring they move north then they come back later in the year to the south

Monte Carlo Sampling

- Improve variance by importance sampling


