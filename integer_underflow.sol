// Integer underflow Attack

pragma solidity ^0.8.0;

contract IntegerUnderflow {
    uint public balance;

    function withdraw(uint amount) public {
        require(amount <= balance, "Insufficient balance");
        balance -= amount; // Vulnerable line
    }

    function deposit(uint amount) public {
        balance += amount;
    }
}
