# Introduction
## Density-Functional Theory (DFT) 
### Hohenberg-Kohn Theorems
### Kohn-Sham Formulation
### Limitations of DFT

## The Self-Interaction Error (SIC) 
### Perdew-Zunger SIC

## The FLOSIC Method 
### The Fermi-Lowdin Orbital (FLOs)
### The Fermi-Lowdin Orbital Descriptors (FODs)
\ 

## The NRLMOL Code
- Describe the code and status of usability 

### Overview of Code
- Big-picture description of how the code works.

### FOD Determination and Practical Considerations
- Describe methods used to input FODs into the FLOSIC program.
- Prime motivation behind this project: an automated and faster process to begin calculations, informed from "empirical" data, capable to extending to larger systems.

## FOD Geometric Motifs
- Describe how FODs arrange themselves similar to LDQ Theory. This (emergent?) behavior makes it 

### SP3 Arrangements
### SP3D Arrangement
### Dominance Schema
- Sometimes FODs are closer to atoms that are of lesser atomic number $Z$ than the neighbouring heavier atoms. This could be attributed to shielding caused by the filled shells of periods 3 and above. The behavior is described in @fig:dominance. This will play a special part in the prediction of bonding FODs.

![dominance](source/figures/dominance.png){#fig:dominance scale=110%}
