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



### Reference:

- [external-vs-public-best-practices](https://ethereum.stackexchange.com/questions/19380/external-vs-public-best-practices)
- [Contracts Soliditylang Docs](https://docs.soliditylang.org/en/v0.8.10/contracts.html)
- [Pure vs Impure Functions](https://dev.to/sanspanic/pure-vs-impure-functions-50aj)
- [Deploy & Run](https://remix-ide.readthedocs.io/en/latest/udapp.html)