// Time Dependency Attack
pragma solidity ^0.8.0;

contract TimeDependentContract {
    uint public deadline;
    uint public reward = 10 ether;
    address payable public winner;

    constructor(uint _deadline) {
        deadline = _deadline;
    }

    function claimReward() public {
        require(block.timestamp >= deadline, "Reward not available yet");
        require(msg.sender != winner, "Reward already claimed");
        winner = payable(msg.sender);
        winner.transfer(reward);
        reward = 0;
    }
}
