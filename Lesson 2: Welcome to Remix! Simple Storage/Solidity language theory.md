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

### Arrays & Structs:

#### 1. Fixed Size Array

Once declared, the array size cannot be changed

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract DemoContract 
{
    // Inline Initialization
    uint[3] public age = [8,15,32];
    string[3] public name; 
    uint[4] public flag;
    function initializeName() public
    {
        name = ["Sunny","Bob","Lilly"];
    }
    function initializeFlag() public
    {
       flag[0] = 21;
       flag[1] = 34;
       flag[2] = 65;
       flag[3] = 12;
    }
    
}
```

#### 2. Dynamic Array

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract DemoContract 
{
    // Dynamic Array
    uint[] public flag;

    // Dynamic Array with first 3 elements initialized
    uint[] public age = [8,15,32];

     // Dynamic Array initialized with new keyword
    int[] public num = new int[]();
}
```

### Memory, Storage, Calldata:

:sparkles: EVM can access and store information in six place:

1. Stack
2. Memory
3. Storage
4. Calldata
5. Code
6. Logs

In which:

:palm_tree: `storage` - variable is a state variable (store on blockchain)
:cyclone: `memory` - variable is in memory and it exists while a function is being called
:zap: `calldata` - special data location that contains function arguments

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract DataLocations {
    uint[] public arr;
    mapping(uint => address) map;
    struct MyStruct {
        uint foo;
    }
    mapping(uint => MyStruct) myStructs;

    function f() public {
        // call _f with state variables
        _f(arr, map, myStructs[1]);

        // get a struct from a mapping
        MyStruct storage myStruct = myStructs[1];
        // create a struct in memory
        MyStruct memory myMemStruct = MyStruct(0);
    }

    function _f(
        uint[] storage _arr,
        mapping(uint => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        // do something with storage variables
    }

    // You can return memory variables
    function g(uint[] memory _arr) public returns (uint[] memory) {
        // do something with memory array
    }

    function h(uint[] calldata _arr) external {
        // do something with calldata array
    }
}
```

### Reference:

- [external-vs-public-best-practices](https://ethereum.stackexchange.com/questions/19380/external-vs-public-best-practices)
- [Contracts Soliditylang Docs](https://docs.soliditylang.org/en/v0.8.10/contracts.html)
- [Pure vs Impure Functions](https://dev.to/sanspanic/pure-vs-impure-functions-50aj)
- [Deploy & Run](https://remix-ide.readthedocs.io/en/latest/udapp.html)
- [Data Locations - Storage, Memory and Calldata](https://solidity-by-example.org/data-locations/)