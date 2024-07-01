// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleLottery {
    address public manager;
    address[] public players;

    constructor() {
        manager = msg.sender;
    }

    function enter() public payable {
        require(msg.value > .01 ether, "Minimum ether required is .01");
        players.push(msg.sender);
    }

    function pickWinner() public {
        require(msg.sender == manager, "Only the manager can call this function");
        require(players.length > 0, "No players in the lottery");

        uint256 index = random() % players.length;
        address winner = players[index];
        
        (bool success, ) = winner.call{ value: address(this).balance }("");
        if (!success) {
            revert("Transfer to winner failed");
        }

        assert(address(this).balance == 0);
        players = new address ; // Reset the players array for the next lottery
    }

    function random() private view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(block.difficulty, block.timestamp, players)));
    }
}
