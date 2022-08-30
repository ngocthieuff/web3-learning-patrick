// Get funds from users
// Withdraw funds
// Set a minium funding value in USD

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract FundMe {
    function fund() public payable {
        // want to be able to set a minimum fund amount in USD
        // 1. How do we send ETH to this contract?
        // => input amount into value field
        // smart contracts can hold funds just like how wallets can
        require(msg.value > 1, "Didn't send enough"); // only success if value is more than 1 wei
    }
}