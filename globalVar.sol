contract Glob {
    // msg.sender = current caller of the contract;
    // msg.value(uint) = amout of wei sent with the call
    // block.timestamp: current block timestamp as seconds since unix epoch
    // block.

    mapping(address => uint) wallet

    function updateWallet(uint _amout) public {
        wallet[msg.sender] = _amout;
    }
}

contract Updated {
    function updateWallet() public {
        Glob walletX = new Glob();
        walletX.updateWallet(30);
    }
}

// other global variables

contract simpleStorage {

    uint storedData;

    function set(uint x) public {
        // storedData = x;
        storedData = block.difficulty
    }

    function get() public view returns(uint) {
        return storedData;
    }

}