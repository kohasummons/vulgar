contract errz {
    // assert() - internal
    // require() - inputs or external components
    // revert
}

// exert thyself
contract Vendor{
    address seller;

    modifier onlySeller() {
        require(msg.sender = seller, 'Only the seller can sell this!');
        _;
    }

    function becomeSeller() public {
        seller = msg.sender;
    }

    function sell(uint _amount) payable public onlySeller{
        if(_amount > msg.value) {
            // do something
            revert('There is not enough ether provided!');
        }        
    }
}