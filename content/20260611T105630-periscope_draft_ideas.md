---
title: Periscope Writing Ideas
date:  2026-06-11T10:56:30-04:00
tags:
mathjax: false
---

# Introduction

Comprehensive formal verification has exacerbated strenuosity due to the ballooning size and increasingly complex modern hardware designs. This combined with the sheer influx of new (possibly bug-ridden) designs created by LLM accelerated development clamors for robust pre-silicon verification.

# Assertions are hard

- Leaving them up to the designer can lead to incomplete specifications [wangAutomaticGenerationAssertions1998](wangAutomaticGenerationAssertions1998.md) [bouleGeneratingHardwareAssertion2008](bouleGeneratingHardwareAssertion2008.md)
- On the other extreme, tasking a verification engineer to come up with them requires them to fully understand the design (scaling issue) [wangAutomaticGenerationAssertions1998](wangAutomaticGenerationAssertions1998.md)[jenihhinReusabilityVerificationAssertions2008](jenihhinReusabilityVerificationAssertions2008.md) [trippelSpecificationFormalVerification2025](trippelSpecificationFormalVerification2025.md) or can cause a guessing game between the VE and Designer in the cases of non-existent documentation [hangalIODINEToolAutomatically2005](hangalIODINEToolAutomatically2005.md)[feyRobustnessUsabilityModern2008](feyRobustnessUsabilityModern2008.md)

The division of labor between designers and verification engineers as to who writes assertions leaves us stuck between Scylla and Charybdis.

Tasking the designers to write assertions for their parts, trades in ambiguity for incompleteness. [wangAutomaticGenerationAssertions1998](wangAutomaticGenerationAssertions1998.md) [bouleGeneratingHardwareAssertion2008](bouleGeneratingHardwareAssertion2008.md)

Leaving it mostly to verification engineers, following Bergeron2000, asks of them to completely understand the design which is bound to not scale. [wangAutomaticGenerationAssertions1998](wangAutomaticGenerationAssertions1998.md) [jenihhinReusabilityVerificationAssertions2008](jenihhinReusabilityVerificationAssertions2008.md) [trippelSpecificationFormalVerification2025](trippelSpecificationFormalVerification2025.md)

Furthermore, the possible lack to documentation makes this a game of charades where VE is stuck trying to guess the design intent while also missing intents that they don't understand. [hangalIODINEToolAutomatically2005](hangalIODINEToolAutomatically2005.md) [feyRobustnessUsabilityModern2008](feyRobustnessUsabilityModern2008.md)


# Combining LLMs into static




# Missing piece
For larger hardware designs, such as a microprocessor, there exists an asymmetry between simulation and emulation. Furthermore, to err on the side of caution, the formal environment starts off severely under constrained.  When we over-constrain, we are susceptible to false signoffs which are a ticking timebomb in the post-silicon world.
This means that we require two crucial feedback mechanisms - the Simulation-Emulation gap and the RV-FV gap. 
We believe these two critical pieces are missing in contemporary open loop works such as HARM and Goldmine that our framework fixes.