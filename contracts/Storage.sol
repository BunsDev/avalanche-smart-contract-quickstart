// SPDX-License-Identifier: MIT
// contracts/Storage.sol

pragma solidity ^0.8.2;

contract Storage {
  uint256 private number;

  // Emitted when the stored number changes
  event ValueChanged(uint256 newNumber);

  // Stores a new number in the contract
  function store(uint256 newNumber) public {
    number = newNumber;
    emit ValueChanged(newNumber);
  }

  // Reads the last stored number
  function retrieve() public view returns (uint256) {
    return number;
  }
}
