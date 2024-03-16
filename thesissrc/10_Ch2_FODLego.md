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
- Describe fundamental as seen in [@fig:classdiag]

![classes](source/figures/classes.png){#fig:classdiag}

## Determination of FODs
- Describe the different determination heuristics for different types of FODs

### Bonding FODs (BFOD) 
### Core FODs (CFOD) 
### Free FODs (FFOD) 
- Sample Diagram and calculation for Double-FFOD (DFFOD) Heuristic in @fig:sample. The edge distance is applied to as a restriction.

![draft DFFOD](source/figures/sample.jpg){#fig:sample}

## A Data-driven Approach to analyzing FODs
In several, and some recent papers the FODs have usually been characterized via their distances from nucleus. This is merely qualitative.

### Reverse Determination of Parameters 
<!-- Use the program to determine the parameters from FLOSIC-optimized FODs. Now we can use angles and relative distances (FOD-FOD distances that are part of a Shell schema) to better characterize FOD arrangement. -->
This is the following implementation used for the reverse determination of parameters

```{=latex}
\begin{algorithm}[H]
 \KwData{ \{$T_n$ | Target FODs\}, \{$P_n$ | Predicted FODs\}}
 \For{$P_n$ in Predicted FODs}{
  Save closest $T_i$ to FOD as $T_{close}$\;
  Initialize a new FOD with $T_{close}$\, $N_n$;
  }
  Reverse Determine parameters for all $N_n$;
 \caption{Reverse Parameter Determination Basic Sequence}
\end{algorithm}
```

#### Free FODs (FFODs).
The free-direction, described in section XYZ, cannot be determined exactly. In order to best compare Free FODs in this parameter-based scheme, I propose using only an average direction formed from the average of all FFOD vectors and use an evaluation function. A cosine distance is too flat near its maximum, so a custom  function can offer a more strict metric of our prediction

$$f(\theta) = 1 - \frac{6}{\pi}\theta$${#eq:customm}

[@eq:customm] yields unity when there at $0$ degrees between the vectors, and 0 when there are $30$ degrees between the vectors.


### A database of compiled FOD Data 
- No current database of FODs. Seeking to create a database
- **TODO!** 
  - Design structure of database
  - Using FODLego, then FLOSIC, create optimized structures for a selection of molecules (scope?)
