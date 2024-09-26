---
title: Mini-Lecture 8.2 - Technologies by timeslice
keywords:
- Energy technologies
- Energy modelling
- Timeslices
authors:
-   Alexander J. M. Kell
---

In this mini-lecture we describe how different technologies can have different characteristics by timeslices.

# Learning objectives

- Understand the different characteristics of technologies by timeslice
- Understand how to characterise technologies by timeslice

# Introduction

In the previous lecture we discovered the importance of timeslices. In this mini-lecture we will learn about how different technologies have different characteristics when it comes to timeslices, and how this can be modelled within MUSE.

# Technologies by timeslices

Different technologies and supply sectors have different characteristics when it comes to timeslices. For instance, solar photovoltaics do not produce any energy when it is dark (for instance, at night) and produce less in the winter. Wind, on the other hand, has a completely different profile and is largely dependent on geography. Therefore, it would make sense to provide a maximum output of the technologies at different times. For instance, it would be useful if the model limited solar output at night time in the form of a maximum utilization factor. Where utilization factor is the ratio of average amount of energy output to total possible output of an energy technology if it were to run 100% of time.

However, it can be very difficult to turn off some technologies, such as a nuclear power plant. Nuclear power plants are expensive to turn on and can be unsafe if constantly varying their power. Also, their marginal cost, or the cost to produce 1MWh of electricity excluding capital costs, is usually much lower than other power plants such as gas or coal plants. It, therefore, makes sense that we place a minimum service factor, or minimum output allowed, on nuclear, to ensure their output does not fall below a certain level.

Other technologies, however, such as gas power plants, can be turned on and off readily; therefore we can simply leave an average utilization factor for all the timeslices.

All of these features exist in MUSE, and during this lecture's hands-on, we will show you how to do this within MUSE.

# Summary

In this mini-lecture we have explored the importance of characterising technologies not just by their economic data, but also by their physical characteristics. We discovered that different technologies have different outputs at different times, such as solar and wind. We also found out that nuclear power, for instance, must output a certain level to remain within a safety range.
