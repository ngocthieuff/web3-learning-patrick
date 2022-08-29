# Smart Contract ABI 101 :zzz:

<img src="/images/lession3_storage_factory/abi_vs_bytecode.png" />

### What is a Smart Contract ABI:

ABI stands for **A**pplication **B**inary **I**nterface.

Smart contract ABI serves as an agent that enable **Web3** contract to **communicate and interact** with **external apps and other smart contract**. :speech_balloon:

### Contract ABI Background:

ABIs do not exist on their own. Without smart contracts, there’d be no contract ABIs.

When it comes to EVM (Ethereum Virtual Machine), devs create smart contracts using the Solidity programming language.
And, while Solidity is a high-level language, the contracts get stored on the EVM as executable bytecode (which is not human-readable).

:tulip: Thus, the bytecode requires a proper interpretation in order to make sense of it – enters contract ABI. 

ABIs enable them to **communicate** between the **bytecode** that the EVM understands and web apps written in **high-level languages** (e.g.: JavaScript).

```
bytecode <-------------ABI-------------> high-level languages
```

<img src="/images/lession3_storage_factory/abi%20communication.png" />

### Reference: 

- [What is a Smart Contract ABI? Full Guide](https://moralis.io/what-is-a-smart-contract-abi-full-guide/)