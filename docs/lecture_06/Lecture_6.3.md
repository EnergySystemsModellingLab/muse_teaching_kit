---
title: Mini-Lecture 6.3 -- Agents by sector
keywords:
- Sectors
- Agent differentiation
- Key agent parameters
authors:
-   Alexander J. M. Kell
---

In this mini-lecture we will cover how agents and their characteristics can differ between sectors. We will also investigate the similarities between agents and sectors and consider the key parameters that make up agents.

# Learning objectives

- Understand the differences between agents of different sectors
- Understand the key parameters that differentiate agents

# Agent parameters

Different sectors may mean having agents with different characteristics. For instance, within the residential sector socioeconomic data can be used to characterise the agents. We could use wealth to characterise our agents in different geographic locations. For example we could place a constraint on the `Budget` parameter for residential users, and split these agents into different proportions. For example, we could prohibit 70% of residential users from spending more than a certain amount on heating which could affect their technology choice. The other 30% of users would form an agent that was not constricted in this way, and thus their choices may end up being different in the model.

Another way we could classify residential agents is through the `Maturity` parameter. This would limit investments in novel technologies until the specified technology had a certain market share. This could be informed by the innovation adoption lifecycle, as shown by Figure 6.3.1. Where, for example, innovators make up 2.5% of the population but have no `Maturity` constraints. As we work our way up the curve from innovators to laggards, this `Maturity` constraint increases.

![](assets/Figure_6.3.1.png){width=100%}

**Figure 6.3.1:** Innovation adoption lifecycle

# Sectors

In this mini-lecture we have focused on the residential sector and seen the way we can characterise agents. Although these characteristics may not directly translate to the power sector, in some cases investors in the power sector can have similar characteristics. For instance, some companies are larger, and are more willing to invest their capital, reflecting a larger `Budget` parameter. Others may be less willing to invest in new technologies. The differing objectives of agents will often be the reason behind differences with other agents. For instance, some agents may only want to minimise their costs, whereas others may want to reduce their capital expenditure. It is easy to change these characteristics within MUSE to create diverse energy scenarios.

# Summary

In this mini-lecture we covered the differences between agents and the different parameters that can be used to inform these differences. We saw how the `Maturity` constraint maps to the innovation adoption lifecycle and how the `Budget` parameter can be informed by socioeconomic characteristics. These parameters lead to a large amount of possible scenarios that can be tested and run.
