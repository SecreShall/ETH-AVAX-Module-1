<h1 align="center">ETH + AVAX PROOF: Intermediate EVM Course</h1>
<h1 align="center">Functions and Errors - ETH + AVAX Project</h1>

# SubscriptionService Smart Contract

## Overview

The `SubscriptionService` contract provides a subscription management system that allows users to subscribe, renew, and unsubscribe from a service. It tracks subscription details and expiration times.

## Features

- **Subscribe**: Users can create or renew their subscriptions for a set duration (30 days).
- **Unsubscribe**: Users can cancel their subscriptions.
- **Check Subscription Status**: Users can verify if they are currently subscribed.
- **Retrieve Subscription Details**: Users can get the details of their subscription.

## Contract Details

### Subscribe

- **Function**: `subscribe()`
- **Description**: Allows users to create a new subscription or renew an existing one. The subscription duration is fixed at 30 days.
- **Events**: Emits the `Subscribed(address indexed user, uint expiry)` event upon successful subscription.

### Unsubscribe

- **Function**: `unsubscribe()`
- **Description**: Allows users to cancel their subscription. Checks whether the user is currently subscribed.
- **Events**: Emits the `Unsubscribed(address indexed user)` event when the subscription is canceled.

### Check Subscription Status

- **Function**: `isSubscribed(address user) public view returns (bool)`
- **Description**: Returns `true` if the specified user has a valid subscription; otherwise, it returns `false`.

### Get Subscription Details

- **Function**: `getSubscription(address user) public view returns (address, uint)`
- **Description**: Retrieves the subscription details of the specified user, including the user's address and subscription expiry timestamp.
- **Error Handling**: If the user is not subscribed, the function will revert with the message "User is not subscribed".

## Error Handling

### `require(condition, message)`

- **Usage**: Ensures that the user is currently subscribed before allowing them to unsubscribe.
- **Effect**: If the user's subscription has expired or does not exist, the function execution will revert with the message "You are not subscribed".

### `revert()`

- **Usage**: Used in `unsubscribe()` and `getSubscription(address user)` to handle cases when a user is not subscribed.
- **Effect**: Reverts with the message "You are not subscribed" if the subscription is invalid.

### `assert(condition)`

- **Usage**: Checks internal consistency of the subscription data.
- **Effect**: Asserts that the stored user address matches the address associated with the subscription.

## Solidity Version

This contract is written in Solidity version ^0.8.0.

## Deployment Instructions

To deploy this contract in Remix IDE:

1. **Open Remix IDE**: Navigate to [Remix IDE](https://remix.ethereum.org/).
2. **Create a New File**: Create a new Solidity file (e.g., `SubscriptionService.sol`) and paste the contract code into it.
3. **Compile the Contract**: Go to the "Solidity Compiler" tab and click on "Compile SubscriptionService.sol".
4. **Deploy the Contract**:
   - Switch to the "Deploy & Run Transactions" tab.
   - Select "JavaScript VM" as the environment.
   - Click on "Deploy".
5. **Interact with the Contract**: Use the deployed contract's functions to subscribe, unsubscribe, check status, and retrieve details.


## Authors

Contributors names and contact info

- Clint Audrey Dela Cruz
- Github: SecreShall
