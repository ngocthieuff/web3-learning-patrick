# Solidity :sleeping:

### Interfaces vs. Abstract Contracts:

#### Abstract Contract:

Contracts are identified as abstract contracts when **at least one of their functions lacks an implementation**.

As a result, they cannot be compiled.

They can however be used as **base contracts** from which other contracts can **inherit from**.

```solidity 
pragma solidity ^0.4.24;

contract Person {
    function gender() public returns (bytes32);
}

contract Employee is Person {
    function gender() public returns (bytes32) { return "female"; }
}
```

#### Interface:

Similar to abstract contracts, but limited to what the contract's ABI can represent.

Additional restrictions:

- Interfaces cannot have any functions implemented.
- Interfaces cannot inherit other contracts or interfaces.
- Interfaces cannot define a constructor, variables, structs, enums.

```solidity 
pragma solidity ^0.4.24;

interface token {
function totalSupply() public view returns (uint256);
function balanceOf(address who) public view returns (uint256);
function transfer(address to, uint256 value) public returns (bool);
}
```

```solidity 
pragma solidity ^0.5.0;

interface Calculator {
   function getResult() external view returns(uint);
}
contract Test is Calculator {
   constructor() public {}
   function getResult() external view returns(uint){
      uint a = 1; 
      uint b = 2;
      uint result = a + b;
      return result;
   }
}
```

:pushpin::pushpin::pushpin:
Contract `extends` Abstract Contract: **IS-A**
Contract `implements` Interface: **HAS-A**

### Floating Point Math in Solidity:

There is no floating point in Solidity. You should keep numbers in whole number format.

You can place decimal place in your front-end code. Take a look at how ERC20 contract was designed.

#### ERC-20 (Ethereum Request for Comments 20):

:dizzy: **What is a token contract?**

A token contract is a smart contract that contains a map of account addresses and their balances.

``token contract = address + balances``

The balance represents a value that is defined by the contract creator: one token contract might use balances to represent physical objects, another monetary value, and a third the holder’s reputation. The unit of this balance is commonly called a token.

<img src="/images/lesson4_remix_fund_me/token_balances.png" />

Transfer from one account to another:

<img src="/images/lesson4_remix_fund_me/transfer_token.png" />

The total supply of tokens can be increased by minting new tokens:

<img src="/images/lesson4_remix_fund_me/increase_total_supply.png" />

The total supply of tokens can be decreased by burning existing tokens:

<img src="/images/lesson4_remix_fund_me/burning_token.png" />

An alternative method of burning tokens is to send the tokens to an address to which the private key is not known, commonly the 0 address.

<img src="/images/lesson4_remix_fund_me/buring_by_send_to_0.png" />

:deciduous_tree: **The definition of an ERC-20 token contract**

`name`: eg, My token

`symbol`: eg, MYT

`decimals`: 

- refers to how `divisible` a token can be, from 0 (not at all divisible) to 18 (pretty much continuous) and even higher if required
- the `decimals` value is the number of digits that come after the decimal place when displaying token values on-screen
- The reason that decimals exists is that Ethereum does not deal with decimal numbers, representing all numeric values as integers

`decimal` examples:
  <sub>
  The first example uses LicenseToken, a token contract that represents software license assignment for a given software product; users holding a LicenseToken have access to the software. It makes no sense for a user to hold a fraction of a license, so the token creator sets decimals to 0. Some holders of LicenseToken are represented graphically below.
  </sub>

  <img src="/images/lesson4_remix_fund_me/eg_license_token.png" />

  <sub>
   Here it can be seen that there is a total of 100 licenses, mainly held by one account. As users purchase a license a single token will be transferred from the holding account to the purchaser. The license validator can check to see if a particular account holds a license token and act accordingly.
  </sub>

  <sub>
  The second example uses GoldToken, a token contract that represents ownership of physical gold. The token creator wants the unit of to represent 1 kilogram of gold, but also wants to allow users to hold and trade amounts of gold down to the gram level (but no lower). As Ethereum does not support decimal numbers a token must represent 1g of gold, and to represent 1,000g as a single 1Kg unit to the external world the decimals are set to 3 (as there are 10³ grams in the kilogram of gold that the token creator wishes to be displayed as 1 token). Some holders of GoldToken are represented graphically below.
  </sub>

  <img src="/images/lesson4_remix_fund_me/eg_gold_token.png" />

  <sub>
  Here it can be seen that there is a total of 50Kg of gold represented (1g per token * 50000 tokens). However, as decimals is set to 3 the view to the user will be as follows:
  </sub>

  <img src="/images/lesson4_remix_fund_me/eg_gold_token_userview.png" />

  <sub>
  It can be seen that setting decimals to 3 literally means that when displaying GoldToken balances there should be 3 digits of the balance after the decimal point.
  </sub>

### Libraries: :books:

Libraries in solidity are similar to contracts that contain reusable codes.



### Reference:

- [Solidity: How to know when to use Abstract Contracts vs Interfaces](https://medium.com/upstate-interactive/solidity-how-to-know-when-to-use-abstract-contracts-vs-interfaces-874cab860c56)
- [Understanding ERC-20 token contracts](https://medium.com/@jgm.orinoco/understanding-erc-20-token-contracts-a809a7310aa5)
- [Does Solidity supports floating point number](https://stackoverflow.com/questions/58277234/does-solidity-supports-floating-point-number#:~:text=There%20is%20no%20floating%20point,in%20your%20front%2Dend%20code.)