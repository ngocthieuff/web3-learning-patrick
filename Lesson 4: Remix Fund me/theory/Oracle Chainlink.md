# Oracle & Chainlink :money_with_wings:

### The Oracle Problem:

Smart Contracts are unable to connect with external systems, data feeds, APIs, existing payment systems or any other off-chain resources on their own.

<img src="/images/lesson4_remix_fund_me/Blockchains%20cannot%20connect%20to%20real-world%20data%20and%20events%20on%20their%20own.jpeg" />

<sub>
As we mentioned above, blockchains are deterministic systems, which means that they themselves can't actually interact with real world data and events.
These blockchains also can't do any external computation. Maybe you have some amazing artificial intelligence model that you want to integrate with a smart contract. Smart contracts by themselves can't do anything.
</sub>

<img src="/images/lesson4_remix_fund_me/deterministic%20vs%20non-deterministic.png" />

Blockchains are deterministic by design, all nodes can reach consensus. If you adding variable data or random data, or values that returned from an API call, different nodes could get different results, and they would never be able to reach a consensus.

This is known as Smart contract connectivity problem, or the Oracle problem.

<img src="/images/lesson4_remix_fund_me/Smart%20contracts%20are%20currently%20unable%20to%20connect%20with%20relevant%20external%20events,%20APIs,%20andor%20payment%20methods.png" />

### Reference:

- [Learn Blockchain, Solidity, and Full Stack Web3 Development with JavaScript](https://youtu.be/gyMwXuJrbJQ?t=13457)
- [Chainlink education](https://chain.link/education)
- [Chainlink blog](https://blog.chain.link/what-is-the-blockchain-oracle-problem/)
- [Chainlink document](https://docs.chain.link/docs/any-api/introduction/)