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

- Entanglement is a valuable resource in many quantum communication protocols
- Require transferal of one of the entangled pair to a party
- 


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