---
title: Mini-Lecture 5.4 -- Agent parameters
keywords:
-   Agent parameters
-   MUSE
authors:
-   Alexander J. M. Kell
---

This mini-lecture explores all the major parameters that can define agents within MUSE.

# Learning objectives

- Understand the different agent parameters and their role within MUSE

# Overview agent parameters

Within MUSE each agent can have their own objectives. MUSE is flexible enough to allow for up to 3 objectives, which can be summed together at various weightings. To input these objectives into MUSE one would use the `Objective1`, `Objective2` and/or `Objective3` parameters and select an objective such as `comfort`, `lifetime_levelized_cost_of_energy` or `fixed_costs`.

Then we would select the weight of each of the objectives using the `ObjData1`, `ObjData2`, `ObjData3` inputs. For example, if we had 3 objectives, we could make the objective of `Objective1` dominant by setting `ObjData1` to 0.5. This would mean it would make up 50% of the final objective.

We can edit the `SearchRule` to reduce the space of technologies that those agents are likely to consider. For example, we could fill this with `same_fuels`, or `same_enduse`.

The rest of the parameters include the parameters discussed in the previous lecture:

- `MaturityThreshold`
- `Budget`

# Summary

In this mini-lecture we discovered the main parameters that are used by agents within MUSE. For a full breakdown of the parameters please refer to the MUSE documentation that can be found online.
