# Introduction
## Density-Functional Theory (DFT)
Density Functional Theory's principal tenet holds that any property of a system of interacting particles can be seen as a fucntional of the ground state density [@Martin]. Precurse theory includes Thomas-Fermi theory which looked at the density of systems to calculate its energy. However, it was not until 1965 that Pierre Hohenberg and Walter Kohn formalized the theory.
### Hohenberg-Kohn Theorems

### Kohn-Sham Formulation
Kohn and Sham replace the Interacting system of N electrons, with a non-interacting system [@Martin].

$$
\begin{aligned}
E^{K S}= & \sum_{i \sigma} f_{i \sigma}\left\langle\psi_{i \sigma}\left|-\frac{\nabla^2}{2}\right| \psi_{i \sigma}\right\rangle+\int d^3 r \rho(\vec{r}) v_{e x t}(\vec{r}) \\
& +\frac{1}{2} \iint d^3 r d^3 r^{\prime} \frac{\rho(\vec{r}) \rho\left(\vec{r}^{\prime}\right)}{\left|\vec{r}-\vec{r}^{\prime}\right|}+E_{x c}\left[\rho_{\uparrow}, \rho_{\downarrow}\right] .
\end{aligned}
$$ {#eq:ksenergy}

### Limitations of DFT

## The Self-Interaction Error (SIC) 
### Perdew-Zunger SIC

## The FLOSIC Method 
### The Fermi-Lowdin Orbital (FLOs)
The canonical KS orbitals can be transformed into Fermi orbitals (FOs):
$$
F_{i \sigma}(\vec{r})=\frac{\sum_\alpha \psi_{\alpha \sigma}^*\left(\vec{a}_{i \sigma}\right) \psi_{\alpha \sigma}(\vec{r})}{\sqrt{\sum_\alpha\left|\psi_{\alpha \sigma}\left(\vec{a}_{i \sigma}\right)\right|^2}} .
$$ {#eq:FLO}
The transformation can be rewritten more simply as
$$
F_{i \alpha}=\frac{\psi_\alpha^*\left(\vec{a}_i\right)}{\sqrt{\rho\left(\vec{a}_i\right)}}
$$ {#eq:FLO_trans}
The position $\vec{a}_i$ is called the Fermi-orbital descriptor (FOD). It parametrizes each individual electron wavefunction in a system. Using the Lowdin method of orthogonalization

## The NRLMOL Code
- Describe the code and status of usability 

### Overview of Code
- Big-picture description of how the code works.

### FOD Determination and Practical Considerations
- Describe methods used to input FODs into the FLOSIC program.
- Prime motivation behind this project: an automated and faster process to begin calculations, informed from "empirical" data, capable to extending to larger systems.

## FOD Geometric Motifs
- Describe how FODs arrange themselves similar to LDQ Theory. This (emergent?) behavior makes it 

As noted in paper X, optimized FODs get arranged in geometries similar to Thompson structures. This regular structure is most apparent in monoatomic systems, but the reagular FOD arrangement distorts in the presence of additional atoms.

### SP3 Arrangements
### SP3D Arrangement
### Dominance Schema
- Sometimes FODs are closer to atoms that are of lesser atomic number $Z$ than the neighbouring heavier atoms. This could be attributed to shielding caused by the filled shells of periods 3 and above. The behavior is described in @fig:dominance. This will play a special part in the prediction of bonding FODs.

![dominance](source/figures/dominance.png){#fig:dominance scale=110%}
