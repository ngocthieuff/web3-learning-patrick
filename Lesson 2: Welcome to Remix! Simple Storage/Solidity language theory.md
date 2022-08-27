# Down to Rabbit hole - Solidity :rabbit:

### Visibility and Getters:

Solidity knows two kinds of function calls:
- Internal ones that do not create an actual EVM call (message call)
- External ones that do.

Functions have to be specified as being `external`, `public`, `internal` or `private`. <span style="background-color: pink;">For state variables, `external` is not possible.</span>

- `Private` functions are only visible to the current contract.
- `External` functions are only visible externally, meaning somebody outside this contract can call this function
- `Internal` means that only this contract and it's children contracts can actually read it. (default visibility)

### Gas cost:

The more "stuff" in your function the more gas it costs.

### Pure vs Impure Functions:

#### 1. Pure function:

To be considered pure, functions must fulfil the following criteria:
- be predictable
- no side effects

```javascript
// PURE FUNCTION 👼
const pureAdd = (num1, num2) => {
  return num1 + num2;
};

//always returns same result given same inputs
pureAdd(5, 5);
//10
pureAdd(5, 5);
//10

//IMPURE FUNCTION 😈
let plsMutateMe = 0;
const impureAdd = (num) => {
  return (plsMutateMe += num);
};

//returns different result given same inputs
impureAdd(5);
//5
impureAdd(5);
//10
console.log(plsMutateMe)
//10 🥳 I'm now double digit, yay!

-----------------------------------------------------------

//IMPURE FUNCTION 😈
const impureAddToArray = (arr1, num) => {
  //altering arr1 in-place by pushing 🏋️
  arr1.push(num);
  return arr1;
};

// PURE FUNCTION 👼
const pureAddToArray = (arr1, num) => {
  return [...arr1, num];
};

-----------------------------------------------------------

// IMPURE FUNCTION 😈
const impureAddToObj = (obj, key, val) => {
  obj[key] = val;
  return obj;
};

// PURE FUNCTION 👼
const  pureAddToObj = (obj, key, val) => {
  return { ...obj, [key]: val };
}
```

### Deployed contracts:

The functions buttons can have different color buttons

<img src="/images/lession2_remix/button_color.png" />

<span style="color: white; background-color: steelblue; font-weight: bold; font-size: 20px;">&nbsp;Blue button&nbsp;</span>

- `constant` or `pure` function
- clicking one of this type <span style="color: steelblue; font-weight: bold;">does not create a new transaction</span> 
- not change state - only return a value stored in the contract - <span style="color: steelblue; font-weight: bold;">won't cost you anything in gas fees</span>

<span style="color: white; background-color: darkorange; font-weight: bold; font-size: 20px;">&nbsp;Orange button&nbsp;</span>

- `non-payable` function
- change state of contract
- <span style="color: darkorange; font-weight: bold;">does not accept Ether</span>
- create new transaction and thus <span style="color: darkorange; font-weight: bold;">cost gas</span>

<span style="color: white; background-color: tomato; font-weight: bold; font-size: 20px;">&nbsp;Red button&nbsp;</span>

- create new transaction and accept `value`
- the `value` is put in in the Value field which is under the `Gas Limit` field (in above image)


### Reference:

- [external-vs-public-best-practices](https://ethereum.stackexchange.com/questions/19380/external-vs-public-best-practices)
- [Contracts Soliditylang Docs](https://docs.soliditylang.org/en/v0.8.10/contracts.html)
- [Pure vs Impure Functions](https://dev.to/sanspanic/pure-vs-impure-functions-50aj)
- [Deploy & Run](https://remix-ide.readthedocs.io/en/latest/udapp.html)