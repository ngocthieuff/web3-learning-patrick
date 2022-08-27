// But, maybe we're okay if we use a more new version of solidity than 0.8.7
// to tell our code that we're okay with a more new version, we can put a little caret here. 
// Hey, any version of 0.8.7 and above is okay for this contract.  
// Use pragma solidity ^0.8.7;

// Just 0.8.7, use pragma solidity 0.8.7;

// Or with range, pragma solidity >=0.8.7 <0.9.0;
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

// To start defining our contract, we're gonna go ahead and write the word contract
// This tell solidity that the next pieces of code is going to be a contract.
contract SimpleStorage {
    // basic types: boolean, uint, int, address, bytes
    // uint256 favoriteNumber;

    // public keyword made it visible after deploying
    uint256 public favoriteNumber;

    // public variable implicity get assigned a function that returns its value
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        // example about gas, if we add
        // favoriteNumber = favoriteNumber + 1
        // we will see that doing more things, this store function is now more computationally expensive
    }

    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }
}