// Integer overflow Attack

pragma solidity ^0.8.0;

contract IntegerOverflow {
    uint public balance;

    function deposit(uint amount) public {
        balance += amount; // Vulnerable line
    }

    function withdraw(uint amount) public {
        require(amount <= balance, "Insufficient balance");
        balance -= amount;
    }
}