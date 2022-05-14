contract Auction {
    address payable public beneficiary;
    uint256 public auctionEndTime;
    
    // Auction data
    address highestBidder;
    address highestBid;
    bool ended;

    mapping(address => uint) pendingReturns;

    event highestBidIncreased(address _address, address _bid);
    event auctionEnded(address _WinnerAddress, address _amount);

    constructor(address payable _beneficiary, uint _endIn) {
        beneficiary = _beneficiary;
        auctionEndTime = block.timestamp + _endIn;
    }


    function bid() public payable {
        if ( block.timestamp > auctionEndTime) revert('Auction has concluded!')
        if( msg.value < highestBid) revert('sorry, the bid is not high enough!');

        if(highestbid != 0) pendingReturns[highestBidder] += highestbid;

        highestBidder = msg.sender;
        highestBid = msg.value;
        emit highestBidIncreased(msg.sender, msg.value);
    }


    function withdraw() public payable returns (bool) {
        uint amount = pendingReturns[msg.sender];

        if(amount > 0) {
            pendingReturns[msg.sender] = 0;
        }

        if(!payable(msg.sender).send(amount)) {
            pendingReturns[msg.sender] = amount;
        }

        return true;
    }

    function auctionEnd() public{
        require(block.timestamp > auctionEndTime, "Auction still has time to run!");
        require(ended, 'Auction ended a while ago!');

        ended = true;
        emit auctionEnded(highestBidder, highestBid);
        beneficiary.transfer(highestBid);
    }
}
