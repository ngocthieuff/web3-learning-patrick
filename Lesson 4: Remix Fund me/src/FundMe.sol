// Get funds from users
// Withdraw funds
// Set a minium funding value in USD

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "./PriceConverter.sol";

error NotOwner();

contract FundMe {
    // uint256 public number;
    uint256 public minumumUsd = 50;
    
    function fund() public payable {
        // want to be able to set a minimum fund amount in USD
        // 1. How do we send ETH to this contract?
        // => input amount into value field
        // smart contracts can hold funds just like how wallets can

        require(msg.value > 1, "Didn't send enough"); // only success if value is more than 1 wei
        
        // what is reverting?
        // undo any action before, and send remaining gas back
         
        // number = 5;
        // initial state of number is 0, but after running fund() function, it was set to 5
        // but if require has not met
        // meaning "Didn't send enough"
        // so, we will see the error is: "The transaction has been reverted to the initial state"
        // but it costed gas for set state of number -> send remaining gas back
    }

    // in order to get usd value that is outside the blockchain, 
    // we have to use a decentralized Oracle network to get price of one ether in terms of USD
    
    // this function is implemented in PriceConverter.sol
    // function getPrice() public {
        // figure out how do we actually call instance of us interacting with a contract outside
        // we gonna need two things:
        // - ABI
        // - address of contract (can be gotten at https://docs.chain.link/docs/ethereum-addresses/)
        // I used Goerli Testnet ETH / USD	address (0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e)
    //}

    function getVersion() public view returns (uint256){
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
        return priceFeed.version();
    }
}