# Solidity - Polymorphism

### Function Polymorphism :whale2:
Function Polymorphism is also known as method **overloading**. 

Functions are declared having **same name** (same class or inheriting contract), **differ number of parameters or parameters datatypes**.

```solidity
// SPDX-License-Identifier: MIT
// Solidity program to demonstrate
// Function Polymorphism
pragma solidity ^0.8.0;
  
// Contract definition
contract methodOverloading {
      
    // Function to get value 
    // of the string variable
    function getValue(
      string memory _strin) public pure returns(
      string memory){
        return _strin;
    }
  
    // function to get value of 
    // the unsigned integer variable 
    function getValue(
      uint _num) public pure returns(
      uint){
        return _num;
    }
}
```
<img src="/images/lession3_storage_factory/function_polymorphism.png" />

### Contract Polymorphism :octopus:

Contract polymorphism means using **multiple contract instances** interchangeably when they are related to each other by using inheritance.

This helps in calling the child contract functions using the instance of the parent contract. :family:

```solidity
// SPDX-License-Identifier: MIT
// Solidity program to demonstrate
// Contract Polymorphism
pragma solidity ^0.8.0;

// Contract definition
contract parent{
	
	// Internal state variable
	uint internal sum;
	
	// Function to set the value of
	// internal state variable sum
	function setValue(
	uint _num1, uint _num2) public {
		sum = _num1 + _num2;
	}

	// Function to return a value 10
	function getValue (
	) public virtual view returns(uint) {
		return 10;
	}
}

// Defining child contract
contract child is parent{
	
	// Function getValue overloaded
	// to return internal state
	// variable sum defined in the
	// parent contract
	function getValue(
	) public override view returns(uint) {
		return sum;
	}
}

// Defining calling contract
contract ContractPolymorphism {
	
	// Creating object
	parent pc = new child();
		
	// Function to set values
	// of 2 unsigned integers
	function getInput(
	uint _num1, uint _num2) public {
		pc.setValue(_num1, _num2);
	}

	// Function to get value of
	// internal state variable sum
	function getSum(
	) public view returns(uint){
		return pc.getValue();
	}
}
```
<img src="/images/lession3_storage_factory/contract_polymorphism.png" />

### Reference: 

- [Solidity – Polymorphism](https://www.geeksforgeeks.org/solidity-polymorphism/)