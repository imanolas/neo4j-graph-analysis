# Neo4j Graph Database Analysis: Digg & Steam Networks

## Author
* **Ioannis Manolas** 

---

## Project Overview

This repository contains an advanced graph database analysis project implemented using **Neo4j** and the **Neo4j Graph Data Science (GDS) Library**. The project explores two distinct real-world domains:
1. **Digg Dataset (`digg_db`):** Models a social news aggregation and voting platform, analyzing user friendship topologies (mutual connections vs. unidirectional followers) and story voting behavior.
2. **Steam Dataset (`game_db`):** Implements a custom gaming network schema modeling user profiles, friendship links, game libraries, and genre classifications for recommendation queries.

---

## Repository Structure

```text
neo4j-graph-analysis/
├── cypher/
│   ├── 01_create_users_digg_friends.cypher  # Initializes User nodes from Digg friendships
│   └── 02_create_users_digg_votes.cypher    # Initializes User nodes from Digg votes
├── digg_db/                                 # Digg database instance and storage files
├── game_db/                                 # Steam game database instance and storage files
└── README.md                                # Project documentation
