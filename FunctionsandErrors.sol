// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ToDoList {
  // Structure to store a to-do item
  struct Item {
    uint id;
    string text;
    bool completed;
  }

  // Mapping to store to-do items by ID (private)
  mapping(uint => Item) private items;

  // Keeps track of the next item ID
  uint public nextItemId = 1;

  // Function to add a new to-do item
  function addItem(string memory text) public {
    items[nextItemId] = Item(nextItemId, text, false);
    nextItemId++;
  }

  // Function to mark a to-do item as completed
  function completeItem(uint itemId) public {
    require(items[itemId].id > 0, "Invalid item ID");
    items[itemId].completed = true;
  }

  // Function to retrieve a specific to-do item (view function)
  function getItem(uint itemId) public view returns (uint id, string memory text, bool completed) {
    assert(items[itemId].id > 0);
    Item memory item = items[itemId];
    return (item.id, item.text, item.completed);
  }
}
