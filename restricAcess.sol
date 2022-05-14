contract RestrictedAccess {
    address public owner = msg.sender;
    uint public creationTime = block.timestamp;

    modifier onlyBy(address _z) {
        require(msg.sender == _z, "sender not authorized!");
        _;
    }

    modifier onlyAfter(uint _x) {
        require(block.timestamp >= _x, "Function invoked too early!");
        _;
    }

    modifier costs(uint _amount) {
        require(msg.value >= _amount, "Not enoughh ether provided!");'
        _;
    }

    function changeOwnerAddress(address _newAddress) public onlyBy(owner) {
        owner = _newAddress;
    }

    function disown() onlyBy(owner) onlyAfter(creationTime + 3 weeks) public{
        delete owner;
    }

    function forceOwnerChange(address _newOwner) payable costs(200 ether) public {
        owner = _newOwner;
    }
}