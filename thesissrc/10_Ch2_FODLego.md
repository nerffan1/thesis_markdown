# The FOD-Lego Program
- Note: Different name needed probably

## General Overview
- Give a __Big-Picture__ overview as seen in image @fig:overview

![overview](source/figures/overview.png){#fig:overview}

### A Heuristic-Based Approach to FOD Placement 
- How can Heuristics help in computational problems?

### Monoatomic Calculations
- Talk about *Dynamic Programming* and how monoatomic geometries could be pieced together in modular fashion (Lego-like).

### Reparametrizing the FOD geometries
- sp3 shells stop being perfect tetrahedra and become irregular in the presence of other atoms.
- Describe how to parametrize FODs in irregular tetrahedra for the sp3 shells.

### Implementation Details
- Describe code structure and use of object-oriented design
- Describe fundamental as seen in @fig:classdiag

![classes](source/figures/classes.png){#fig:classdiag}

## Determination of FODs
- Describe the different determination heuristics for different types of FODs

### Bonding FODs (BFOD) 
### Core FODs (CFOD) 
### Free FODs (FFOD) 
- Sample Diagram and calculation for Double-FFOD (DFFOD) Heuristic in @fig:sample. The edge distance is applied to as a restriction.

![draft DFFOD](source/figures/sample.jpg){#fig:sample}

## A Data-driven Approach to analyzing FODs
### Reverse Determination of Parameters 
- Use the program to determine the parameters from FLOSIC-optimized FODs. Now we can use angles and relative distances (FOD-FOD distances that are part of a Shell schema) to better characterize FOD arrangement.

### A database of compiled FOD Data 
- No current database of FODs. Seeking to create a database
- **TODO!** 
  - Design structure of database
  - Using FODLego, then FLOSIC, create optimized structures for a selection of molecules (scope?)
