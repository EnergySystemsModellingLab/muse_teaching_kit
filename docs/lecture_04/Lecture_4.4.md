---
title: Mini-Lecture 4.4 -- Timeslicing and climate policy
keywords:
-   Climate policy
-   Timeslicing
authors:
-   Alexander J. M. Kell
---

This mini-lecture explores the relevance of timeslicing to climate policy. We will explore how different timeslicing can affect modelling results, why it's important to consider realistic timeslicing and how these can affect policy decisions

# Learning objectives

- Understand the impact of timeslicing on modelling outputs
- Learn how timeslicing can affect policy decisions

# Timeslicing and policy

Timeslicing is a core component of an energy systems model as we have previously discussed. If one were to underestimate the number of timeslices in an energy systems model, it is likely that this would have major implications on the model outputs. 

Let's look at an example: if we were to model solar panels with an average capacity factor for the entire time horizon of the model this would assume that the solar panels can be used at night and could displace other technologies, such as gas turbines. However, in reality, solar panels contribute to the grid during the day and nothing at night. Therefore, we need some sort of flexibility in the system to ramp up after the sun sets. This needs to be modelled explicitly within MUSE, so to allow gas (or other technologies) to fill this gap in supply. 

If we take this conclusion further, it is possible to see scenarios where the intermittency of solar and wind are not modelled, and therefore we observe scenarios with a majority in solar or wind. With current technologies this is not possible, and therefore underscores the importance of timeslicing. 

If we do not use accurate timeslicing then the model outputs can skew resulting policy, and so due care must be taken for sourcing data from different geographies.

# Summary

In this lecture we have looked into the implications of different timeslicing decisions made when creating an energy systems model. We learnt that if we do not get this right, the investments made could be skewed and unrealistic. 

