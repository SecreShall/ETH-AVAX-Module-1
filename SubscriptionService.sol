// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SubscriptionService {
    // Structure to store subscription details
    struct Subscription {
        address user;
        uint expiry;
    }

    // Mapping to store subscriptions by user address
    mapping(address => Subscription) private subscriptions;

    // Subscription duration in seconds (e.g., 30 days)
    uint constant DURATION = 30 days;

    // Event to emit when a subscription is created or renewed
    event Subscribed(address indexed user, uint expiry);

    // Event to emit when a subscription is canceled
    event Unsubscribed(address indexed user);

    // Function to subscribe or renew subscription
    function subscribe() public {
        uint newExpiry = block.timestamp + DURATION;

        // Check if the user already has a subscription
        if (subscriptions[msg.sender].expiry > block.timestamp) {
            newExpiry = subscriptions[msg.sender].expiry + DURATION;
        }

        // Update the subscription
        subscriptions[msg.sender] = Subscription(msg.sender, newExpiry);
        emit Subscribed(msg.sender, newExpiry);
    }

    // Function to unsubscribe
    function unsubscribe() public {
        // Check if user is subscribed and that the subscription is still valid
        require(subscriptions[msg.sender].expiry > block.timestamp, "You are not subscribed");

        delete subscriptions[msg.sender];
        emit Unsubscribed(msg.sender);
    }

    // Function to check subscription status
    function isSubscribed(address user) public view returns (bool) {
        return subscriptions[user].expiry > block.timestamp;
    }

    // Function to get subscription details
    function getSubscription(address user) public view returns (address, uint) {
        // Check if the user is subscribed
        if (subscriptions[user].expiry == 0) {
            revert("User is not subscribed");
        }

        // Assert that the user address matches the stored subscription
        assert(subscriptions[user].user == user);

        return (subscriptions[user].user, subscriptions[user].expiry);
    }
}
