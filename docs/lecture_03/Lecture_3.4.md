---
title: "Mini-Lecture 3.4 -- Demand examples and units"
keywords:
-   Infrastructure performance
authors:
-   Alexander J. M. Kell
---

# Short description

Mini-lecture 3.4 explains how we can use timeslices to approximate the real-world demand profile. We will look into the difference between power and energy. Finally, we will learn how to convert units to ensure we are consistent within MUSE. 

# Learning objectives

- Understand how timeslices can be used in the context of demand
- Understand the difference between power and energy
- Know the units to use within MUSE and how to convert these

# Demand profile

Figure 3.1.5 shown an example demand profile for electricity that could be used in MUSE. In this demand profile there are 96 bars: one for each of the timeslices used in MUSE. These timeslices are split into 16 different sections – seasonal and into day and night. This is because there are four different seasons, which are split into day and night (twice). The demand profile is used to represent the proportion of demand occurring in each timeslice. 

![](assets/Figure_3.1.5.png){width=100%}

**Figure 3.4.1:** Example demand profile for MUSE

The chart shows us that electricity demand, in this example, is highest during the day in winter, while it is lowest during the night in spring. However, it is important to note that this is a simplification: in reality demand varies in the season and with each hour of the day. This simplification means that we model one representative day for each season, and we assume equal demand within days and nights of those seasons. 

Whilst this is a simplification, it allows us to consider the variation in demand across seasons and days without having an incredibly complex model structure. This reduces the amount of time required to run a full model relative to having timeslices for each hour and day of the year, as well as reducing the data input requirements.

## Units

We must ensure that during our data input process we are consistent with our units. Usually we will use the petajoules unit as this is the unit for energy for different sectors. If you were just modelling the power sector, you could use megawatt hours. 

## Power vs. Energy

When using energy modelling tools it is important to remember the difference between power and energy. Sometimes these terms are used interchangeably. However, there is an important difference between the two:

- Energy is the total amount of work done or the total capacity for doing work
- Power is the rate at which this energy is supplied or used. 

Therefore, energy and power have different units. For example, energy is often measured in Joules, while power is often measured in Joules per Second (or Watts). 

For example, providing the weight stays the same, lifting a weight requires the exact same amount of energy no matter how quickly we lift it. However, if we lift the weight more quickly, the power has increased. We used the same amount of energy, but over a shorter amount of time. 

## Units for demand

It is important that we convert our data from different sources to petajoules (PJ) when we include it in MUSE. 

Here are some example conversion factors:

- 1 Petajoule (PJ) = 1000 Terajoules (TJ)
- 1 Petajoule (PJ) = 1,000,000 Gigajoules (GJ)
- 3.6 Petajoules (PJ) = 1 Terawatt hour (TWh)
- 0.0036 Petajoules (PJ) = 1 Gigawatt hour (GWh)

We must ensure that we are consistent with the units we use within MUSE.

# Summary

In this lecture we have learnt the difference between power and energy. We have also learnt how to use timeslicing to speed up our model and reduce complexity. Finally, we learnt that we must use consistent units.








