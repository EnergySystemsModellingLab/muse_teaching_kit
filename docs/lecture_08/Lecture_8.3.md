---
title: Mini-Lecture 8.3 -- Energy demand in MUSE
keywords:
-   Energy demand
-   MUSE
authors:
-   Alexander J. M. Kell
---

## Short description

Following mini-lecture 8.2, this mini-lecture provides an insight into how to model service demand within MUSE. There are two possible methods to model service demand in MUSE, from user input and by correlation. In this mini-lecture we will learn what the difference is between these.

## Learning objectives

- Understand how to input exogenous service demand
- Understand what service demand by correlation is

# Lecture content

## Service Demand

A service demand is a term used to describe the consumption of energy by human activity. This could be, for instance, energy for lighting or cooking in the residential sector, personal vehicles in the transportation sector or machine usage in the industrial sector. The service demand drives the entire energy system, and it influences the total amount of energy used, the location of use and the types of fuels used in the energy supply system. It also includes the characteristics of the end-use technologies that consume energy. 

## Exogenous service demand

Within MUSE we must set the energy demand exogenously. That means that the model does not calculate how much the service demand is. Effectively, this means that the user must make an assumption on how much electricity is consumed in, for example, the residential sector for a particular region in the model.

We can change this per scenario, but these values will not change during a simulation run, even if the price for all fuels increases significantly, for instance. We are able to define the exogenous service demand by year, sector, region and timeslice.

## Service demand by correlation. 

In the previous section we learnt about the exogenous service demand. That is, we can explicitly specify what the demand would be per year, sector, region and timeslice. However, it may be the case that we do not know what the electricity demand is per year, especially in the future. We may instead conclude that our electricity demand is a function of the GDP and population of a particular region, as previously discussed. 

To accommodate such a scenario, MUSE enables us to choose a regression function that estimates service demands from GDP and population projections, which may be more predictable or have more accessible data in your case. A regression function is simply a mathematical model which fits a linear model to your data to predict what may happen in the future.

## Sources for energy demand data

We can get publicly available energy balance data and/or demand projections from the following sources:

- International Energy Agency
- International Renewable Energy Agency
- United Nations Statistics
- Asia-Pacific Economic Cooperation

Energy balances tell us the amount that each energy commodity is used in a country or region in a given year. This is usually broken down by sector. 


## Summary

In this mini-lecture we introduced service demands, and the way we can input these into MUSE. The two ways we can input service demands are:
- Exogenous service demand
- Service demand by correlation

We also learned where we can get energy data from for various countries.

In the hands-on we will see how we can actually do this within MUSE.



 

