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
	- i.e $\ket{\phi}$ is seperable $\leftarrow \nexists \ \ket{\phi_1}, \ \ket{\phi_2} s.t. \ket{\phi} = \ket{\phi_1} \otimes \ket{\phi_2}$
- Conditional Von-Neuman entropy quantifies the level of entanglement 
	- $S(A|B) - S(B) \langle 0$ implies that $\rho_{AB}$ is entangled
	- $S(A|B) - S(B) = -1$ imples that $\rho_{AB}$ is maximally entangled

## Example 1

### Conditional entropy of a pure state

\begin{align*}
	\rho_{AB} &= \ket{\phi_{00}}\bra{\phi_{00}}_{AB}\\
	S(A|B) - S(B) &= H(eig(AB)) - H(eig(B)) \\
	&= H(1,0,0,0) - H(.5,.5)\\
	&= 0 - 1\\
	&= -1\\
\end{align*}

## Example 2

### Conditional entropy of a noisy entangled state

\begin{align*}
	\rho'_{AB} &= .8\ket{\phi_{00}}\bra{\phi_{00}}_{AB} + \frac{.2}{4}I \\
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
	- "Closeness" of a state to $\ket{\phi_{00}}\bra{\phi_{00}}$
	- $F =\bra{\phi_{00}}\rho\ket{\phi_{00}}$
- Werner States
	- Invariant under all unitary operators (up to a phase)
	- $\rho = U\rho U^*$
	- For our purposes they take the form $x\ket{\phi_{00}}\bra{\phi_{00}} + (1-x)I$
- Depolarization
	- A process of removing off-diagonals/equalizing eigenvalues
	- Can be used to turn an arbitrary state into a Werner state
	- Preserves fidelity of original state

## BBPSSW, a Recurrence Purification Protocol (1/5)

- Described in a paper by Bennet et al. in 1996
- Allows the purification of states with arbitrary accuracy
- Can be applied recursively
    - but you need $2^n$ qubits
- Requires two way classical communication between Alice and Bob

## BPPSSW, Three Simple Steps (2/5)

1. Depolarize $\rho$ to a Werner state
  - For example, $x\ket{\phi_{00}}\bra{\phi_{00}} + (1-x)\frac{1}{4}I$
2. Bilateral CNOTs on the entangled states
3. Measure the target pair. If the measurement is the same keep the pair and repeat. If not, discard the pair.

## BPPSSW, Bilateral CNOTS (3/5)

Alice sends Bob qubits 2 and 4. Qubit 1 is entangled with 2 and 3 is entangled with 4.

| CNOT    | Source    | Target  |
| ------- |:---------:|:-------:|
| Alice's | qubit 1   | qubit 3 |
| Bob's   | qubit 2   | qubit 4 |

Construct Alice's CNOT: $\ket{0}\bra{0} \otimes I \otimes I \otimes I + 
                 \ket{1}\bra{1} \otimes I \otimes \sigma_x \otimes I$
Construct Bob's CNOT: $I \otimes \ket{0}\bra{0} \otimes I \otimes I + 
                 I \otimes \ket{1}\bra{1} \otimes I \otimes \sigma_x$

## Alice's CNOT

$\left[\begin{array}{cccccccccccccccc}1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0\\0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0\\0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0\\0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0\\0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0\\0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0\\0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0\\0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0\\0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0\\0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0\\0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0 & 0\\0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 0 & 0 & 0 & 0\\0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0\\0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1\\0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0 & 0\\0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 0 & 1 & 0 & 0\end{array}\right]$

## BPPSSW, Deciding to Keep or Discard (4/5)

Alice and Bob choose to measure one of their two pairs in the Z basis. Depending on how pure the entanglement is, it will collapse to a more pure or less pure state. 

- If the state is already pure, then measuring a $\ket{1}$ or $\ket{1}$ at one of the entangled qubits will collapse the other qubit into the same state
    - Ex: $\ket{\phi_{00}}$ will collapse to $\ket{00}$ with probability $\frac{1}{2}$ and to $\ket{11}$ with probability $\frac{1}{2}$
    - If $\ket{01}$ or $\ket{10}$ is observed, then the entanglement must have been weakened by noise in the quantum channel
- We don't have any of the $\ket{\psi}$ bell states because the state was depolarized

## BPPSSW, Iterations (5/5)

This protocol can be repeated indefinitely.
![Rounds of Iteration](purificationIterations.png)

## Entanglement Pumping

- BPPSSW protocol requires exponential number of qubits
	- Not practically feasible
- Entanglment pumping trades spacial requirement for temporal requirement
	- Recieve new "elementary" entangled pairs as protocol advances
	- Probabilistic -  but polynomial time

## Entanglement Pumping

- Purify one system using another recieved noisily entangled pair
	- Use the two systems for one round of BPPSSW
	- If successfully purify, repeat
	- Else restart (with two new elementary pairs)
- If a purification round fails, whole process restarts
	- But reach arbitrarily high fidelity rather quickly
- Trade-offs:
	- Longer process
	- Can't be parrallelized
	- Requires transmission of qubits
- Can be generalized to $N\mapsto M$ protocols

# Questions
