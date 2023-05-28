// Entropy Illusion Attack

// Vulnerable contract susceptible to the Entropy Illusion attack
contract RandomNumberGenerator {
    uint256 public randomNumber;
    uint256 private nonce;

    function generateRandomNumber() public {
        // Insecure random number generation using block timestamp
        randomNumber = uint256(keccak256(abi.encodePacked(block.timestamp, nonce)));
        nonce++;
    }
}