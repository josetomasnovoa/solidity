// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Message {
    string private message;
    address private owner;

    event MessageUpdated(string oldMessage, string newMessage);
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }

    constructor(string memory initialMessage) {
        message = initialMessage;
        owner = msg.sender;
        emit OwnershipTransferred(address(0), msg.sender);
    }

    function getInfo() public view returns (string memory) {
        return message;
    }

    function setMessage(string memory _message) public onlyOwner {
        string memory oldMessage = message;
        message = _message;
        emit MessageUpdated(oldMessage, _message);
    }

    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "New owner is the zero address");
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }
}

