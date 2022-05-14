pragma solidity 0.8.0;

contract RandomGenerator {

    function getRandMod(uint _range) external pure returns(uint) {
        return uint(keccack256(abi.encodePacked(block.timestamp, block.difficulty, msg.sender))) % _range;
    }
}



// Control
pragma solidity 0.8.0;

contract GenerateRandomNumber {

    // Leverage:
    // Modulo - leverage remainder to compute stuff

    function randMod(uint _range) external view returns(uint) {
        // grab information from the blockchain randomly 
        // to generate random number
        // abi.encodePacked() slushes togerther arguments nicely
        return uint(keccak256(abi.encodePacked(block.timestamp(), block.difficulty, msg.sender))) % _range;
    }

}

contract GenerateRandomNumber {

    // Leverage:
    // Modulo - leverage remainder to compute stuff

    function randMod(uint _range) external view returns(uint) {
        // grab information from the blockchain randomly 
        // to generate random number
        // abi.encodePacked() slushes togerther arguments nicely
        return uint(keccak256(abi.encodePacked(block.timestamp(), block.difficulty, msg.sender))) % _range;
    }

}