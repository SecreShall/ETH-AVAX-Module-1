<h1 align="center">ETH + AVAX PROOF: Intermediate EVM Course</h1>
<h1 align="center">Functions and Errors - ETH + AVAX Project</h1>

# SimpleWallet Contract

This Solidity smart contract implements a simple wallet functionality allowing the owner to deposit and withdraw ether.

## Features

- **Deposit Function:** Allows anyone to deposit ether into the contract.
- **Withdraw Function:** Allows the contract owner to withdraw ether from the contract.
- **OnlyOwner Modifier:** Restricts certain functions to be callable only by the contract owner.
- **Revert Function:** Demonstrates a private function that reverts the transaction.

## Usage

1. **Deposit Ether:**
   - Use the `deposit(uint256 amount)` function to deposit ether into the contract.
   - Ensure the `amount` parameter is greater than zero.

2. **Withdraw Ether:**
   - Use the `withdraw(uint256 amount)` function to withdraw ether from the contract.
   - Only the contract owner can call this function.
   - Ensure the `amount` parameter does not exceed the contract balance.

## Contract Details

- **Balance:** Public variable `balance` shows the current balance of ether held by the contract.
- **Owner:** Public variable `owner` represents the address of the contract owner, set during contract deployment.

## Error Handling

- The contract includes basic error handling using `require` statements to check conditions before executing transactions.
- The `revertState()` function is a private function demonstrating how to revert a transaction with a custom message.

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for more details.

## Authors

Contributors names and contact info

- Clint Audrey Dela Cruz
- Github: SecreShall
