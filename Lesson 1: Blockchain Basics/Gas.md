# Gas

### Gas I: Introduction

When we make transactions, the "miners" or "validators" make a small fee.

:arrow_right: **Gas:** a unit of computational measurement.



```console
Gas Price * 21,000 = Transaction Fee
```

With [0xb08124d31d87513e7a710ef94b81fef1f0d206b8c581a5128dd25a149fc6e694](https://rinkeby.etherscan.io/tx/0xb08124d31d87513e7a710ef94b81fef1f0d206b8c581a5128dd25a149fc6e694):

```console
0.000000009249571296 * 21,000 = 0.000194240997216
```

:cookie: The more complex your transaction is the more gas you have to pay.

:cookie: The more people send transactions at the same time the more expensive your gas costs are.

### Gas II: Block Rewards & EIP 1559

---

The main takeaway should be: 
<span style="background-color: #081E5D; color: white; font-weight: bold; font-size: 17px">"The more people use a chain, the more expensive it is to send transactions."</span> :beers:

---

<img src="/images/lession1_blockchain_basic/transaction_details.png" />

<img src="/images/lession1_blockchain_basic/gas supplied.png" />

<img src="/images/lession1_blockchain_basic/gas%20used%20by%20alone%20transaction%20you%20can%20think%20it%20is%20base%20threshold.png" />

You can set a limit on how much gas you want to spend.
Example, in metamask:

<img src="/images/lession1_blockchain_basic/advance%20gas%20custom%20for%20send%20eth%201.png" />
<img src="/images/lession1_blockchain_basic/advance%20gas%20custom%20for%20send%20eth%202.png" />

If we have tip (priority fee), the formula will be:

```console
Transaction fee = Gas units (limit) * (Base fee + Tip)
```

Let's say Jordan has to pay Taylor 1 ETH. In the transaction, the gas limit is `21,000 units` and the base fee is `100 gwei`. Jordan includes a tip of `10 gwei`.

Using the formula above we can calculate this as ``21,000 * (100 + 10) = 2,310,000 gwei or 0.00231 ETH``.


### EIP 1559:

EIP - **E**thereum **I**mprovement **P**roposal and is common way of requesting changes to the ethereum network inspired by bitcoin improvement proposal bips.

EIP is a design document covering technical specifications of the proposed change and rational behind it the majority of eips focus on improving technical details of ethereum and they are not widely discussed outside of the core ethereum developers community.

EIP 1559 describes changes to the ethereum fee model and it was put forward by Vitalik Buterin in 2019.

### But, why we need EIP 1559?


### Reference:

- [Can ETH Become DEFLATIONARY? EIP 1559 Explained](https://www.youtube.com/watch?v=MGemhK9t44Q)