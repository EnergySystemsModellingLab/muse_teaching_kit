---
title: Mini-Lecture 8.1 -- Introduction to regions and aggregation
keywords:
-   Regions
-   MUSE
authors:
-   Alexander J. M. Kell
---

This mini-lecture provides an overview of different regions within energy systems models and how these can be represented within MUSE.

# Learning objectives

-   When to aggregate data into different regions

# Aggregation

Regions within energy models play an important role. We often want to aggregate technoeconomic data from multiple regions into one. For example, the UK is made up of multiple different counties with different energy demands and supply. However, it could be the case that we do not have comprehensive data for each of these counties. We may, however, have plentiful data for the UK as a whole, or even for England, Scotland, Northern Ireland and Wales. We can therefore aggregrate this data and make assumptions about the geographical locations of supply and demand. 

This is an example of aggregation and can make the modelling process more straightforward, whilst losing a small amount of accuracy. This is because we do not need to model each individual power plant, demand centre or end-use sector. This means we can use aggregated data which is often easier to access.

We can also aggregate multiple countries into regions. For example, we can merge the European continent together. This would be especially useful if we are considering a global model. However, it must be noted that we would lose significant detail by aggregating up regions. It is up to you, the model user, to consider the trade-offs between aggregation and disaggregation. For example, if you only wanted to model a single country, it would be possible to have a single region. However, if you had good access to data at the local level, you could disaggregate this further.



# Summary

In this mini-lecture we learnt about the trade-offs between aggregation and disaggregation when defining regions. We learnt that the more aggregated the model, the less granular data is required. This can be helpful in cases where the data is not available at a local level, but available at a national level.

