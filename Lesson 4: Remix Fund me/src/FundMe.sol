// Get funds from users
// Withdraw funds
// Set a minium funding value in USD

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract FundMe {
    uint256 public number;
    
    function fund() public payable {
        // want to be able to set a minimum fund amount in USD
        // 1. How do we send ETH to this contract?
        // => input amount into value field
        // smart contracts can hold funds just like how wallets can

        require(msg.value > 1, "Didn't send enough"); // only success if value is more than 1 wei
        
        // what is reverting?
        // undo any action before, and send remaining gas back
         
         number = 5;
        // initial state of number is 0, but after running fund() function, it was set to 5
        // but if require has not met
        // meaning "Didn't send enough"
        // so, we will see the error is: "The transaction has been reverted to the initial state"
    }
}