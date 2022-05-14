pragma solidity 0.8.0;

// Fallback functions
// cannot have a name, no inputs
//  returns nothing, must be declared external

// send and transfer receives 2300 gas
// but call method grabs all of the gas(more!)


contract Fallback {

    event Log(uint gas);

    fallback () external payable {
        // not recommended to include
        // much functionality here, because
        // this will fail if it uses more gas
        emit Log(gasLeft());
    }

    function getBalance() public view returns(uint) {
        // return the stored balance of the contract
        return address(this).balance;
    }
}

// invoke send: grabs 2300 gas which is enough to emit a log
//gasLeft returns how much gas is left

contract SendToFallBack {
    function transferToFallBack(address payable _to) public payable {
        // send ether with the transfer method
        // automatically trancsfer 2300 gas amouts

        _to.transfer(msg.value)
    };

    function callFallBack(address payable _to) public payable {
        (bool sent,) = _to.call{value:msg.value}('');
        require(sent, 'Failed to Send!');
    }
}