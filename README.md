<h1 align="center">ETH + AVAX PROOF: Intermediate EVM Course</h1>
<h1 align="center">Functions and Errors - ETH + AVAX Project</h1>

## Overview

ToDoList is a Solidity smart contract designed to manage a simple to-do list. It allows adding new items, marking items as completed, and retrieving item details. This README focuses on error handling using `require()`, `revert()`, and `assert()`.

## Features

- Add a new to-do item.
- Mark a to-do item as completed.
- Retrieve details of a specific to-do item.

## Error Handling

### `require(condition, message)`

- **Usage**: Ensures the item ID is valid before marking an item as completed in `completeItem(uint itemId)`.
- **Effect**: If `items[itemId].id` is not greater than 0, the function execution will revert with the message "Invalid item ID".

### `revert(message)`

- **Usage**: Checks if an item exists in `getItem(uint itemId)`.
- **Effect**: If `items[itemId].id` is 0, the function execution will revert with the message "Item does not exist".

### `assert(condition)`

- **Usage**: Asserts internal consistency after verifying an item exists in `getItem(uint itemId)`.
- **Effect**: Ensures `items[itemId].id` is greater than 0. Used as a sanity check to detect unexpected conditions.

## Solidity Version

This contract is written in Solidity version ^0.8.0.

## Usage

To deploy and interact with the contract:

1. **Deployment**: Deploy `ToDoList.sol` on an Ethereum-compatible blockchain.
2. **Interaction**:
   - Use the `addItem` function to add a new to-do item.
   - Use the `completeItem` function to mark a to-do item as completed.
   - Use the `getItem` function to retrieve details of a specific to-do item.


## License

This project is licensed under the MIT License. 

## Authors

Contributors names and contact info

- Clint Audrey Dela Cruz
- Github: SecreShall
