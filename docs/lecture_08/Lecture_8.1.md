---
title: Mini-Lecture 8.1 -- Energy demands in energy systems modelling
keywords:
-   Energy demand
-   Energy systems models
authors:
-   Alexander J. M. Kell
---

To begin lecture 8, this mini-lecture provides an overview of energy demands within an energy system. We will cover differences in energy demands by sector, time and population classes. We will also begin to explore why these differences are important within energy models. Lecture 8 will take you through the basics for modelling energy demand in MUSE, the different options available to do so, and some specific examples

# Learning objectives

- Learn what energy demands are in an energy modelling context
- Understand how demands can change based on different variables

# Introduction

Everyone needs energy for many different purposes. The form in which this energy should be delivered is dependent on the specific application. These demands for energy come from all sectors of society such as:

- The residential sector (rural and urban)
  - Cooking
  - Heating
  - Cooling
  - Lighting
  - Appliances
- Industry
  - Chemical processes
  - Steam production
  - Heating
- Commerce
  - Lighting
  - Heating
  - Cooling buildings
  - Keeping products at low temperatures
- Transport
  - Cars
  - Trucks
  - Buses
  - Aviation
  - Shipping
  - Trains
- Agriculture
  - Tractors
  - Machinery
  - Pumping water

## Variations in daily energy demand

These energy demands can vary on hourly, daily, weekly and monthly timescales. This mainly reflects the schedule of consumers' activities. For example, on a monthly timescale more cooling will be used in summer and more heating in winter. However, these energy demands can also vary by sector, as shown by Figure 8.1.1.

![](assets/Figure_8.1.1.png){width=100%}

**Figure 8.1.1:** Variations of energy demand by sector in a hypothetical example [@Taliotis2018].

Figure 8.1.1 shows us that the magnitude of demand varies by sector, with agricultural demand significantly lower than residential and commercial demand, in this example. The reason that the commercial and residential sectors consume more is because their activities are more energy intensive or they are simply larger.

We can also see that the daily profile of demand varies by sector. For example, in Figure 8.1.1 we can see that there is a clear evening peak in residential demand, whereas agricultural and industrial demand remains flat throughout the day. This is because agricultural and industrial demands are consistent throughout the day. This is likely because the industrial and agricultural sector operate constantly, whereas energy use in homes peaks in the evening when consumers use more electricity for cooking, lighting and appliances when they return from work or other business.

## Sector specific demands

The differences between sectors means that it can sometimes be important to model demands separately by each sector. This feature allows the models to consider the specific characteristics of each demand.

Within each of these sectors, the energy demand varies over time and across different types of consumers. For example, within the residential sector, demands can differ between rural and urban households, as shown in Figure 8.1.2. This can also be true between grid-connected and off-grid areas. Energy planners must ensure that energy demand is always met for all types of consumers. Therefore, it is important that the key characteristics of different demands are represented in energy models.

![](assets/Figure_8.1.2.png){width=100%}

**Figure 8.1.2:** Variations of energy demand for the residential sector by population types [@Olaniyan2018]

## Long-term variations in energy demands

A major challenge in energy planning is that energy demands can change over time. This could be due to population growth or the creation of new industries. Figure 8.1.3 displays historical variations in energy demands. It is likely that these demands are correlated to changes in society. For example, increases in energy demand likely reflect increased industrial activity. For energy planning, we must also think about how energy demands are likely to change in the future.

We can often forecast energy demand, such as with future projections  as shown in Figure 8.1.3. These forecasts can be created using estimates of the key influencers of energy demand, such as population growth and economic activity. Future projections are often based on how energy demands have changed historically.

![](assets/Figure_8.1.3.png){width=100%}

**Figure 8.1.3:** Long-term energy consumption by source

## Capacity expansion planning

One of the key purposes of MUSE is for capacity expansion. Figure 8.1.4 displays this key issue which MUSE can address. Essentially, if total demand increases (green line) and existing system capacities are retired (blue line), how can we invest to meet the energy capacity needed to supply demand (red line)?

![](assets/Figure_8.1.4.png){width=100%}

**Figure 8.1.4:** Capacity expansion [@Taliotis2018]

You may notice that the red line is higher than the green line at all points. This is due to losses due to lower generating efficiencies. The gap between the red and blue lines demonstrates the required capacity expansion over time. MUSE enables us to plan such a capacity expansion whilst considering technical, economic and environmental constraints.

# Summary

In this mini-lecture we covered the differences between energy demands in different population types, sectors and timescales. We learnt why it is important to model these differences in demand in energy systems models. We also explored how energy systems models can be used to meet a changing demand profile in the future.
