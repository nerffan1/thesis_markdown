# Introduction
Density Functional Theory (DFT) is a popular computational tool that solves the Schrodinger's equation for a many-electron system. It is helpful in X,Y,Z. However, DFT holds an inherent error known as the self-interaction error (SIE) which is thought to cause 

# Theoretical Background
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

### The Self-Interaction Error (SIE)

## The Self-Interaction Correction (SIC) 
In contrast to Hartree-Fock theory, where the exchange integral cancels out exactly the Hartree energy, KS-DFT does not fully remove the SIE. The 

### Perdew-Zunger SIC
The exchange-correlation should cancel the Hartree energy in a non self-interacting system
$$
U[n_{\alpha\sigma}] + E_{xc}[n_{\alpha\sigma},0] = 0
$$ {#eq:pzcond}
However, [@eq:pzcond] does not hold true in KS-DFT. On an orbital-by-orbital basis, we can remove the residual by removing the difference caused by the inequality of 
$$
E^{DFA} = E^{DFA}[\rho] + \sum_i U^{SIC}[\rho_i]
$$
 
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

The position $\vec{a}_i$ is called the Fermi-orbital descriptor (FOD). It parametrizes each individual electron wavefunction in the system. These orbitals are not always orthogonal, so they are orthogonalized using the Lowdin method of orthogonalization. 

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
The shape formed by 9 electrons in the Thompson problem is the polyhedron known as an *augmented triangular prism*, or a *tricapped trigonal prism*. The same geometry was proposed by King [-@kinghybrid] as the coordination polyhedra with idealized maximum symmetry.
FOD arrangement is different from this idealized geometry, but qualitatively is the same on visual inspection.


### Dominance Schema
- Sometimes FODs are closer to atoms that are of lesser atomic number $Z$ than the neighbouring heavier atoms. This could be attributed to shielding caused by the filled shells of periods 3 and above. The behavior is described in @fig:dominance. This will play a special part in the prediction of bonding FODs.

![dominance](source/figures/dominance.png){#fig:dominance scale=110%}
