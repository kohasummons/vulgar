contract Eventesque {
    // Declare the event, Emit the event - Two steps process
    event NewTrade(
        uint indexed date;
        address from;
        address indexed to;
        address indexed amount;
    )


    function trade(address to, uint amout) external {

        // Emit the NewTrade event to be consumed externally
        // throught web3js, ethersjs
        emit NewTrade(block.timestamp, msg.sender, to, amount);
    }
}