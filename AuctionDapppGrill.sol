contract Auction{
    address payable public beneficiary;
    uint public auctionEndtime;
    bool ended;

    mapping(address => uint) public vault;

    // Auction data
    address hightestBidder;
    uint highestBid;

    // events
    event highestBidIncreased(address _address, uint _amount);
    event auctionEnded(address _winner, uint _bid)

    // initialze contract
    constructor(address payable _beneficiary, uint _endIn) public {
        beneficiary = _beneficiary;
        auctionEndTime = block.timestamp + _endIn;
    }

    // bid function
    function bid() payable public {
        if (block.timestamp > auctionEndTime) revert('The Auction has concluded!');
        if (msg.value > highestBid) revert('The bid doesn"t quite move the scale');

        if (highestBid != 0) vault[msg.sender] += highestBid;

        highestBidder = msg.sender;
        highestBid = msg.value;
        emit highestBidIncreased(msg.sender, msg.value);
    }

    // withdreawl function
    function withdraw() public payable return(bool success) {
        uint amount = vault[msg.sender];
        if(amount > 0) vault[msg.sender] = 0;

        if(!payable(msg.sender).send(amount)) vault[msg.sender] = amount;
        return true;
    }

    // auction end
    function auctionEnd() public {
        if(block.timestamp > auctionEndTime) revert("Auction is still running!");
        if(ended) revert("Auction concluded already")

        ended = true;
        emit auctionEnd(highestBidder, highestBid);
        beneficiary.transfer(highestbid);
    }
}