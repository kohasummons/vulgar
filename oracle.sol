pragma solidity 0.8.0;

contract Oracle {
    address public admin;
    uint public rand;

    constructor() {
        admin = msg.sender;
    }

    modifier OnlyAdmin() {
        require(msg.sender = admin);
        _;
    }

    function setRand(uint _value) external OnlyAdmin{
        rand = _value;
    }
}

contract GenerateRandomNumber is Oracle{


    Oracle oracle;

    constructor(address oracleAddress){
        oracle = Oracle(oracleAddress)
    }


    // Leverage:
    // Modulo - leverage remainder to compute stuff

    function randMod(uint _range) external view returns(uint) OnlyAdmin{
        // grab information from the blockchain randomly 
        // to generate random number
        // abi.encodePacked() slushes togerther arguments nicely
        return uint(keccak256(abi.encodePacked(oracle.rand(), block.timestamp(), block.difficulty, msg.sender))) % range;
    }

}