# Contract

This Solidity smart contract demonstrates the usage of `require()`, `assert()`, and `revert()` statements for error handling and validation. The contract allows the owner to deposit and withdraw ether and provides functions to trigger specific error conditions.

## Features

- Deposit ether into the contract.
- Withdraw ether from the contract (only by the owner).
- Trigger a revert condition to demonstrate the `revert` statement.

## Functions

### `deposit()`

Allows users to deposit ether into the contract.

- **Parameters**: None
- **Payable**: Yes
- **Conditions**:
  - The deposit amount must be greater than zero.

### `withdraw(uint256 amount)`

Allows the owner to withdraw ether from the contract.

- **Parameters**:
  - `amount` (uint256): The amount of ether to withdraw.
- **Conditions**:
  - Only the owner can withdraw.
  - The contract must have enough balance for the withdrawal.
  - The balance must be correctly updated after the withdrawal.

### `triggerRevert()`

Demonstrates the use of the `revert` statement by always reverting the transaction.

- **Parameters**: None
- **Pure**: Yes
- **Reverts**: Always reverts with the message "This function always reverts".

## Usage

1. **Deploy the Contract**:
   - Deploy the contract using an Ethereum development environment like Remix.

2. **Deposit Ether**:
   - Call the `deposit` function and send ether to the contract.
   - Ensure the value sent is greater than zero to pass the `require` check.

3. **Withdraw Ether**:
   - Call the `withdraw` function with the desired amount to withdraw.
   - Ensure the caller is the owner and the amount requested is less than or equal to the contract's balance to pass the `require` checks.

4. **Trigger Revert**:
   - Call the `triggerRevert` function to see how the `revert` statement works.
   - This function always reverts with the message "This function always reverts".

## Example

Here is an example of how to interact with the contract:

1. **Deploy**: Deploy the contract on Remix.
2. **Deposit**: Send 1 ether to the contract by calling the `deposit` function.
3. **Withdraw**: As the owner, call the `withdraw` function to withdraw 0.5 ether.
4. **Trigger Revert**: Call the `triggerRevert` function to trigger a revert condition.

## License

This project is licensed under the MIT License.


## Authors

Contributors names and contact info

- Clint Audrey Dela Cruz
- Github: SecreShall
