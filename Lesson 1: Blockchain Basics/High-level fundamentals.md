# Sybil resistance & chain selection

:question: But do you know how a decentralized peer-to-peer system with no authoritative figure make decisions?

:information_desk_person: The anwser lies in consensus mechanisms.

Same purpose: to ensure records are true and honest.

### Proof-of-Work:

A race to figure out the right combination on a treasure chest

Imagine a group of treasure hunters trying to open a chest with a complicated lock attached to it. :moneybag:

Figuring out the correct combination is tedious, but the first person to do so gets rewarded.

### Proof-of-State:

The higher the stake placed, the higher the chance to be selected as a validator.

Let's apply this to the treasure chest scenario.
Picture a group of treasure hunters vying for a chest.:moneybag:
The chest is rewarded based on a lottery system. To participate, each hunter has to buy lottery tickets. The more each hunter buys, the higher the chance of wining.

### Proof-of-Authority:

Validators are selected based on reputation.

Let's revisit the treasure chest scenario.:moneybag:
The group of treasure hunters form a union and pool their treasures. Based on their level of trustworthiness, a select few are appointed by the group to ensure the validity of the chest's content.

### Sybil resistance & chain selection

Now technically, proof-of-work and proof-of-stake **are not consensus protocols by themselves**, but they are often referred to as such for simplicity.

Actually, 
```
Sybil resistance mechanism + chain selection rule = a true consensus mechanism
```

#### Sybil resistance:

- Protocol fares against a Sybil attack.
- Sybil attacks are when one user or group pretends to be many users. 

#### Chain selection rule:

- Is used to decide which chain is the "correct" chain.
- The most difficult chain, maybe.

### Sharding:

Sharding splits a blockchain company's entire network into smaller partitions, known as "**shards**".

Sharding is a solution to the scalability problem, a sharded blockchain really just means that it's going to be a blockchain of blockchains.

There is main chain thats going to coordinate everything amongst several chains that hook into this main chain. This means that there's more chains for people to make transactions on, effectively increasing the amount of block space. Sharding can greatly increase the number of transactions on a blockchain layer one.

#### Layer 1:

Base layer blockchain implementation.

#### Layer 2: 

Any application built on top of a layer 1.

### Recap:

The bigger the blockchain, the more secure.

Sharding and Rollups are scalability solution.

Only so many transactions can fit into a block.

Gas prices are how much it costs to perform executions on-chain.

### Reference: 

- [Understanding Blockchain Consensus Mechanisms](https://www.youtube.com/watch?v=ojxfbN78WFQ)
- [TYPES OF CONSENSUS MECHANISMS](https://ethereum.org/en/developers/docs/consensus-mechanisms/)