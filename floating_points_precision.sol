// Floating and Precision Attack 

contract TokenSale {
    uint256 public tokenPrice;
    uint256 public tokensSold;

    function buyTokens(uint256 _amount) public payable {
        uint256 cost = _amount * tokenPrice;
        require(msg.value == cost);
        tokensSold += _amount;
    }

    function sellTokens(uint256 _amount) public {
        uint256 payout = _amount * tokenPrice;
        require(address(this).balance >= payout);
        tokensSold -= _amount;
        msg.sender.transfer(payout);
    }
}
