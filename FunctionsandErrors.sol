// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Contract {
    uint256 public balance;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Function to deposit ether into the contract
    function deposit() public payable {
        // Use require to check for a valid deposit amount
        require(msg.value > 0, "Deposit amount must be greater than zero");
        balance += msg.value;
    }

    // Function to withdraw ether from the contract
    function withdraw(uint256 amount) public {
        // Only the owner can withdraw
        require(msg.sender == owner, "Only the owner can withdraw");
        // Use require to ensure the contract has enough balance
        require(amount <= balance, "Insufficient balance");

        uint256 oldBalance = balance;
        balance -= amount;
        // Check the condition using assert
        assert(balance == oldBalance - amount);

        // Transfer the amount to the owner
        payable(msg.sender).transfer(amount);
    }

    // Function to demonstrate revert
    function triggerRevert() public pure {
        revert("This function always reverts");
    }
}
