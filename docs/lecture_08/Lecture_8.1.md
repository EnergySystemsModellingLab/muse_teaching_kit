---
title: Mini-Lecture 8.1 -- Timeslicing in energy systems modelling
keywords:
- Timeslices
- Energy modelling
- Energy demands
authors:
-   Alexander J. M. Kell
---

This mini-lecture provides an overview of timeslicing in energy systems modelling.

# Learning objectives

- Learn why we use timeslices in energy systems models
- Understand the importance of representative days

# Introduction

With energy systems models we must model how demand is met by supply. However, over the course of a year, or even over the course of 30 years we have large variations in demand and supply. For instance, the weather changes between years, seasons, and days. This all has an effect on the amount of energy that can be supplied by renewable energy sources such as solar and wind.

It is also true that this variation in demand has a large impact on the demand. In a particularly cold year, or on a particular cold day, energy demand may significantly increase as consumers use more energy for heating. The same may be true during a particularly warm period if people need energy for cooling systems. We therefore need to model this variability.

## Representative days

As you can probably imagine, matching supply and demand for every 30 minutes in a year is very costly in terms of computation time. If we must match supply and demand for every 30 minutes for 30 years (or more), we may end up with a very slow model in return for some gains in accuracy.

However, it may be the case that we do not need to model a year in such high detail. In most cases, for long-term energy systems models, we can reduce the amount of detail to significantly increase the speed of the model, without losing significant accuracy [@Kell2020].

A common approach is to model 4 days for each year. Each day corresponds to a season of the year and is split into 24 timeslices (which equates to a timeslice representing one hour). Therefore, we maintain the variability within a day, but also within seasons. We will lose some of the extremely hot or cold days, but that matters less when we're considering the long-term planning horizon.

We do not always have to take into account entire days, to reduce the complexity further. For instance, we could have 8 days, but with only 2 timeslices (day and night). This will make the model run quickly, but may lose some detail. It is up to you, as the modeller, to find a sweet spot between accuracy and speed of computation. Various papers have been published to find this sweet spot, which you can look into in your own time [@Poncelet2017].

# Summary

In this mini-lecture we discovered why long-term energy models consider timeslices and representative days. Through this approach we are able to maintain high accuracy whilst also reducing computation time.
