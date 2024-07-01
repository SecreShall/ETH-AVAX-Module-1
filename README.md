<h1 align="center">ETH + AVAX PROOF: Intermediate EVM Course</h1>
<h1 align="center">Functions and Errors - ETH + AVAX Project</h1>

## Overview
The `SimpleLottery` smart contract is a basic implementation of a decentralized lottery system. Participants can enter the lottery by sending a minimum amount of ether, and a manager can pick a random winner who will receive the entire balance of the contract.

## Features
- **Enter Lottery**: Users can enter the lottery by sending at least 0.01 ether.
- **Pick Winner**: The manager can pick a winner randomly from the list of players. The winner receives the entire balance of the contract.
- **Revert on Failure**: Uses `revert` to handle the failure of transferring the prize to the winner.
- **Assert for Safety**: Uses `assert` to ensure that the contract balance is zero after the prize is transferred.


## License

This project is licensed under the MIT License. 

## Authors

Contributors names and contact info

- Clint Audrey Dela Cruz
- Github: SecreShall
