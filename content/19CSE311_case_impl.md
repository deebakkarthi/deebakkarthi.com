---
title: Case Study Implementation Notes
date: 2023-04-03
---
# Paper Notes

> Damiano Di Francesco Maesa, Paolo Mori, Laura Ricci. Blockchain Based Access
> Control. 17th IFIP International Conference on Distributed Applications and
> Interoperable Systems (DAIS), Jun 2017, Neuchâtel, Switzerland. pp.206-220,
> 10.1007/978-3-319-59665-5_15. hal-01800124
> [Paper Link](https://hal.inria.fr/hal-01800124/file/450046_1_En_15_Chapter.pdf)

## Why the need for Access Control

## Existing Methods

### Problem with ABAC

-------------------------------------------------------------------------------
# Presentation Notes
 
##  Introduction

Access control system is a security system that determines who can access a
particular resource. The particular resource may be physical, like an office
or a warehouse, or digital, like a file.

Access to physical resources can be moderated by a human(receptionist, guards)
or a mechanical system(locks) or a digital system(Biometric authentication).

### Problems

- Humans and mechanical systems can be *compromised*.
- Mechanical systems lack the ability to control *timing based restriction*
- Access management is very hard. We cannot revoke a person's access without
  rekeying the entire thing.
- Key management
    - Keys can be lost, stolen or duplicated.
### Advantages of EAC and Digital

- Enhanced security
    - Not easily compromised
- Better access control
    - More granular
    - Time based restriction
    - Role based restriction
- Auditability
    - We know who and when the resource was accessed
    
##  Problem Statement

One of the main problems with EAC is that it is complex. Sometimes the better
option is to outsource the authentication to a third party. This is resultant
in the number of ***Software as a Service*** providers of access control.

This in turn has its own set of problems.
- Single point of failure
- The third party may deny the access to the resouce or be coerced to give access.

All of this can be solved by using a *decentralized access control system*

### Advantages

- Transparency
- Decentralized execution
- Right transfer without thrid party intervention
 
##  System architecture (Block Diagram)

![Block diagram](/19CSE311_case_block_diag.png)

##  Algorithms

![Flowchart](/19CSE311_case_algo.png)

##  Description of Dataset

##  Sample Output

##  References

------------------------------------------------------------------------------
Notes for the [Patrick Collin's blockchain course](https://www.youtube.com/watch?v=gyMwXuJrbJQ)

# Blockchain Basics
- One of the first implementations of a blockchain was the *Bitcoin* protocol.
Outlined in this [white paper](https://bitcoin.org/bitcoin.pdf) is the
original idea of the author. The Bitcoin protocol allowed people to perform
transactions in a decentralized manner.
- In 2013, Vitalik Buterin, in a white paper, suggested a key features that
used the bitcoin core - *Smart Contracts*. Instead of thinking of the
blockchain as just a value store, he suggested that it could be extended for
more things. This lead to the birth of *Ethereum*.
- One of the main differences b/w Ethereum and Bitcoin is the suppport for
*Turing-complete smart contracts*.
- Smart contracts are a set of instructions that can be executed in a
decentralized way. They are executed *on the blockchain*.

# Oracle Problem
- Blockchains are *closed-off deterministic systems*.
- They are walled off from the external world. But to use them in any real
world situations we need external data.
- This external data is provided by *Blockchain Oracles*. Oracles are any
device that /deliver external data or computation/ to a blockchain.
- Just like the blockchain these oracle need to dentralized to maintain the
total decentralized nature of the system.
- We are gonna use [Chainlink](https://github.com/smartcontractkit/chainlink)
as the oracle provider in this course.

# What is the problem solved by smart contracts

- To sum up in three words "*Trust Minimized Agreements*".
- Everything in life is, in someway, a contract.
- The problem with real world contracts is that it relies on *trust*.
- But most often there is incentive to break this trust. When signing a
contract we think "Can I trust this guy?" but smart contracts offer another
view "Can I sign this contract by absolutely not trusting this guy?"
- Smart contracts can offer this "No broken promises" promise due to three
crucial things
1. Immutability
2. Distributedness
3. Automated Execution
