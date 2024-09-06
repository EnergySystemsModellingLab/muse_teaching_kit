---
title: Mini-Lecture 2.4 -- Key MUSE components
keywords:
-   Service demand
-   Agent-based modelling
-   Market clearing algorithm
authors:
-   Alexander J. M. Kell
---

In this mini-lecture we will explore the key components which make up MUSE. These key components include the service demand, technologies, agents and sectors. We will now explore what these components do and how they interact.

# Learning objectives

- Understand what the key components of MUSE are
- Understand what these terms mean in the context of MUSE
- Understand how these components interact within MUSE

## Service Demand

The energy service demand is a user input which defines the demand that an end-use sector has. An example of this is the service demand commodity of heat or cooling that the residential sector requires. End-use, in this case, refers to the energy which is utilised at the very final stage, after both extraction and conversion.

The estimate of the energy service demand is the first step. This estimate can be an exogenous input derived from the user, or correlations of GDP and population which reflect the socio-economic development of a region or country.

## Technologies

Users are able to define any technology they wish for each of the energy sectors. Examples include power generators such as coal power plants, buses in the transport sector or lighting in the residential sector.

Each of the technologies are placed in their regions of interest, such as the USA or India. They are then defined by the following, but not limited to, technoeconomic variables:

- Capital costs
- Fixed costs
- Maximum capacity limit
- Maximum capacity growth
- Lifetime of the technology
- Utilisation factor
- Interest rate

Technologies, and their parameters, are defined in a specific file called the Technodata file.

## Sectors

Sectors typically group areas of economic activity together, such as the residential sector, which might include all energy consuming activities of households. Possible examples of sectors are:

- Gas sector
- Power sector
- Residential sector
- Industrial sector

Each of these sectors contain their respective technologies which consume energy commodities. For example, the residential sector may consume electricity, gas or oil for a variety of different energy demands such as lighting, cooking and heating.

Each of the technologies, which consume a commodity, also output a different commodity or service. For example, a gas boiler consumes gas, but outputs heat and hot water.

## Agents

Agents represent the investment decision makers in an energy system, for example consumers or companies. They invest in technologies that meet service demands, like heating, or produce other needed energy commodities, like electricity. These agents can be heterogenous, meaning that their investment priorities have the ability to differ.

As an example, a generation company could compare potential power generators based on their levelised cost of electricity, their net present value, by minimising the total capital cost, a mixture of these and/or any user-defined approach. This approach more closely matches the behaviour of real-life agents in the energy market, where companies, or people, have different priorities and constraints.

## Market Clearing Algorithm

The market clearing algorithm (MCA) is the central component between the different supplies and demands of the energy system in question. The MCA iterates between the demand and supply of each of these sectors. Its role is to govern the endogenous price of commodities over the course of a simulation. In other words, it calculates the prices based on the supply and demand of the various technologies and regions.

For a hypothetical example, the price of electricity is set in a first iteration to $70/MWh. However, at this price, the majority of residential agents prefer to heat their homes using gas. As a result of this, residential agents consume less electricity and more gas. This reduction in demand reduces the electricity price to $50/MWh in the second iteration. However, at this lower electricity price, some agents decide to invest in electric heating as opposed to gas. Eventually, the price converges on $60/MWh, where supply and demand for both electricity and gas are equal.

This is the principle of the MCA. It finds an equilibrium by iterating through each of the different sectors until an overall equilibrium is reached for each of the commodities. It is possible to run the MCA in a carbon budget mode, as well as an exogenous mode. The carbon budget mode ensures that an endogenous carbon price is calculated to limit the emissions of the energy system to be below a user-defined value. Whereas, the exogenous mode allows the carbon price to be set by the user.

# Summary

In this mini-lecture we have explored the different components which make up MUSE. We have explored the:

- Service Demand
- Technologies
- Sectors
- Agents
- Market Clearing Algorithm

All of these components interact, for example the agents in a particular sector invest in technologies to meet a certain service demand. Finally, the market clearing algorithm brings these different components together to find an ultimate price on all the different factors of the particular case study.

We will provide more information on agents and their capabilities in lecture 7.
