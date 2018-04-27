---
author: Omar Amer and Cameron Morris
title:  Entanglement Distillation
date:   April 27, 2018
theme: Warsaw
aspectratio: 169
header-includes: |
    \usepackage{amsmath}
    \usepackage{physics}
output:
    beamer_presentation:
    slide_level: 2
---

# Motivation


## Entanglement 

- Joint state which cannot be "seperated"
	- i.e $\ket{\psi}$ is seperable $\leftarrow \nexists \ \ket{\psi_1}, \ \ket{\psi_2} s.t. \ket{\psi} = \ket{\psi_1} \otimes \ket{\psi_2}$
- Conditional Von-Neuman entropy quantifies the level of entanglement 
	- $S(A|B) - S(B) \langle 0$ implies that $\rho_{AB}$ is entangled
	- $S(A|B) - S(B) = -1$ imples that $\rho_{AB}$ is maximally entangled

## Example 1

\begin{align*}
	\rho_{AB} &= \ket{\Psi_{00}}\bra{\Psi_{00}}_{AB}\\
	S(A|B) - S(B) &= H(eig(AB)) - H(eig(B)) \\
	&= H(1,0,0,0) - H(.5,.5)\\
	&= 0 - 1\\
	&= -1\\
\end{align*}

## Example 2

\begin{align*}
	\rho'_{AB} &= .8\ket{\Psi_{00}}\bra{\Psi_{00}}_{AB} + \frac{.2}{4}I \\
	S(A|B) - S(B) &= H(eig(AB)) - H(eig(B)) \\
	&= H(.85,.05,.05,.05) - H(.5,.5)\\
	&= .84 - 1\\
	&= -.16 \\
\end{align*}


## Applications

- Quantum Teleporation
- Quantum Error Correction
- Quantum Key Distribution

## Problem

- Necessary to transfer/store entangled particles
- Quantum channels are noisy, storage is decoherrent 
- Maximally entangled states degrade into less entangled states
- We want to find a way to increase entanglement at a distance

# Entanglement Distillation

## Background 

- Fidelity
	- "Closeness" of a state to $\ket{\Psi_{00}}\bra{\Psi_{00}}$
	- $F =\bra{\Psi_{00}}\rho\ket{\Psi_{00}}$
- Werner States
	- Invariant under all unitary operators (up to a phase)
	- $\rho = U\rho U^*$
	- For our purposes they take the form $x\ket{\Psi_{00}}\bra{\Psi_{00}} + (1-x)I$
- Depolarization
	- A process of removing off-diagonals/equalizing eigenvalues
	- Can be used to turn an arbitrary state into a Werner state
	- Preserves fidelity of original state

## BBPSSW, a Recurrence Purification Protocol (1/?)

- Described in a paper by Bennet et al. in 1996
- Allows the purification of states with arbitrary accuracy
- Can be applied recursively
    - but you need $2^n$ qubits
- Requires two way classical communication between Alice and Bob

## BPPSSW, Three Simple Steps (2/?)

1. Depolarize $\rho$ to a Werner state
  - For example, $x\ket{\phi_{00}}\bra{\phi_{00}} + (1-x)\frac{1}{4}I$
2. Bilateral CNOTs on the entangled states
3. Measure the target pair. If the measurement is the same keep the pair and repeat. If not, discard the pair. 

## BPPSSW, Bilateral CNOTS (3/?)

Alice sends Bob qubits 2 and 4. Qubit 1 is entangled with 2 and 3 is entangled with 4.

| CNOT    | Source    | Target  |
| ------- |:---------:|:-------:|
| Alice's | qubit 1   | qubit 3 |
| Bob's   | qubit 2   | qubit 4 |
