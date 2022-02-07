---
title: Mini-Lecture 3.3 -- Energy demand in MUSE
keywords:
-   Energy demand
-   MUSE
authors:
-   Alexander J. M. Kell
---

## Short description

Following mini-lecture 3.2, this mini-lecture provides an insight into how to model service demand within MUSE. There are two possible methods to model service demand in MUSE, from user input and by correlation. In this lecture we will learn what the difference is between these.

## Learning objectives

- Understand how to input exogenous service demand
- Understand what service demand by correlation is

# Lecture content

## Service Demand

A service demand is a term used to describe the consumption of energy by human activity. This could be, for instance, energy for lighting or cooking in the residential sector, personal vehicles in the transportation sector or machine usage in the industrial sector. The service demand drives the entire energy sytem, and influences the total amount of energy used, the location and the types of fuels used in the energy supply system. It also includes the characteristics of the end use technologies that consume energy. 

## Exogenous service demand

Within MUSE we must set the energy demand exogenously. That means that the model does not calculate how much the service demand is. Effectively, this means that the user must make an assumption on how much electricity is consumed in the residential sector for a particular region in the model.

We can change this per scenario, but these values will not change, even if the price for all fuels increase significantly, for instance. We are able to define the exogenous service demand by year, sector, region and timeslice.

## Service demand by correlation. 

In the previous section we learnt about the exogenous service demand. That is, we can explicilty specified what the demand would be per year, sector, region and timeslice. However, it may be the case that we do not know what the electricity demand is per year, especially in the future. We may instead clonclude that our electricity demand is a function of the GDP and population of a particular region, as previously discussed. 

To accommodate such a scenario, MUSE enables us to choose a regression function that estimates service demands from GDP and population projections, which may be more certain in your case.



## Summary

In this mini-lecture we introduced service demands, and the way we can input these into MUSE. The two ways we can input service demands are:
- Exogenous service demand
- Service demand by correlation

In the hands-on we will see how we can actually do this within MUSE.
