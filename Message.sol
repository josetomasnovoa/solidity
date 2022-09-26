// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;
 
contract Message {
  string private message; 
   
  function getInfo() public view returns (string memory) {
      return message;
  }
 
  function setMessage(string memory _message) public {
      message = _message;
  }
}
