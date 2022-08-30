// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// inheritance with two steps:
// step 01: import
import "./SimpleStorage.sol";

// step 02, using `is` keyword
contract ExtraStorage is SimpleStorage {

    // overriding
    // using `virtual` keyword in original function
    // using `override` keyword in overriding function
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
}