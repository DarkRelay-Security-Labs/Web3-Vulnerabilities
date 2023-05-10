#RETRANCY ATTACK:

function withdraw() public{
  uint bal = balances[msg.sender];
  require(bal > 0);// eth >0
  (bool sent, ) = msg.sender.call{value: bal}("");
  require(sent, "Failed to send Ether");
  balances[msg.sender] = 0;
}
