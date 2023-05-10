#TOD ATTACK:

pragma solidity ^0.8.0;

contract Lottery {
    address payable public winner;
    uint public totalBalance;

    function withdraw() public {
        require(msg.sender == winner, "You are not the winner of the lottery");
        require(totalBalance > 0, "Lottery balance is zero");
        winner.transfer(totalBalance);
        totalBalance = 0;
    }

    function enter() public payable {
        require(msg.value == 1 ether, "Please send 1 ether to enter the lottery");
        totalBalance += msg.value;
    }
}
