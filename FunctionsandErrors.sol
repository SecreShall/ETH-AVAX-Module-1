// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleWallet {
    uint256 public balance;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Function to deposit ether into the contract
    function deposit(uint256 amount) public payable {
        require(amount > 0, "Deposit amount must be greater than zero");
        balance += amount;
        emit Deposit(msg.sender, amount);
    }

    // Function to withdraw ether from the contract
    function withdraw(uint256 amount) public {
        require(msg.sender == owner, "Only the owner can withdraw");
        require(amount <= balance, "Insufficient balance");
        uint256 oldBalance = balance;
        balance -= amount;
        // Check the condition using assert
        assert(balance == oldBalance - amount);
    }

    // Function to demonstrate revert
    function triggerRevert() public pure {
        revert("Reverts");
    }
}
