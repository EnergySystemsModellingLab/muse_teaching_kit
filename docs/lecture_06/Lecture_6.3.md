---
title: Mini-Lecture 6.3 -- The industrial and commercial sectors
keywords:
-   Industrial sector
-   Commercial sectors
-   MUSE modelling
authors:
-   Alexander J. M. Kell
---

This mini-lecture reflects on 

# Learning objectives

- The main characteristics of the industrial and commercial sectors
- How these can be modelled within MUSE

# Overview of the industrial and commercial sectors

Next, we will explore the industrial and commercial sectors and their respective energy demands. Figure 6.3.1. shows the energy consumption for different sectors, including industrial, by OECD (generally high-income countries) and non-OECD countries (generally low- and middle-income countries). It is evident that the industrial sector is responsible for a large share of energy consumption across the world. The industrial sector is forecast to rise in non-OECD countries significantly. We must also consider this growing expected demand in the modelling process and during policy design. 

![](assets/Figure_6.3.1.png){width=100%}

**Figure 6.3.1:** Energy consumption by sector, OECD and non-OECD [@world1020007].

Energy is used in industry for a number of different purposes. For instance, heating and cooling, running machinery and chemical processes. These processes use a large variety of fuels and depend on the purpose, location and the technoeconomics. 

The commercial sector has a lower energy demand when compared to the industrial sector. This is because commercial processes, typically, are less energy intense and on smaller scales. This demand is often lighting, heating and to run office equipment and appliances.

## Industrial and commercial technologies

Commercial activities use many different technologies which require energy inputs. For example, office electronics, lighting and heating systems. Many of these technologies use electricity. However, for some demands natural gas is used, for example for heating commercial buildings.

The industrial sector uses a wide range of technologies. This includes heavy machinery, boilers, heating and air conditioning. Again, a wide variety of fuels can be used for this. However, there exist a number of processes, such as steel manufacturing which requires very high temperatures. This is usually only done by burning fossil fuels, as it can be difficult to reach these high temperatures with electricity. 

## Modelling industrial and commercial sectors in MUSE

Similarly to the residential and transport sectors, we can use an energy balance [@iea_world_energy_balance] to estimate industry demands -- for instance, for industry heating demands. There are different technologies available for industrial heating. These can be grouped in a way that makes sense for your case study. However, as an example we can group these into high heat and low heat, which are modelled as separate demands. This is because generating very high temperatures requires different technologies and processes to generating low heat. 

Again, we can group the technologies by their input fuel, such as biomass, coal, oil products or electricity with the `CommIn.csv` file. Through modelling with MUSE we can understand the emissions and economics of different technologies. 

In addition, the commercial sector will have a different demand load profile to the residential sector. This is because, typically, the demand will follow office times for the specific region, whereas the residential sector will follow the inverse of the office schedule.

# Summary

In this mini-lecture we explored the industrial and commercial sectors. We learnt the difference between these two sectors in terms of demand and the different types of technologies used in these sectors. We saw that demand for the industrial sector is expected to rise significantly in non-OECD countries. Finally, we learnt how we can model different technologies in MUSE.  

