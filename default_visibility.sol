#DEFAULT VISIBILITY ATTACK:

pragma solidity ^0.8.0;

contract Bank {
  uint256 balance;

  function deposit(uint256 amount) public {
    balance += amount;
  }

  function withdraw(uint256 amount) public {
    balance -= amount;
  }

  function getBalance() {
    return balance;
  }
}
