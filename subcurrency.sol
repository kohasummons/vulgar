pragma solidity 0.8.0;

// Allow only contract creator to create new coin
// Allow anyone to send and receive coin witout signing up (with ethereum keypair)

contract Coin {
    address public minter;
    mapping(address => uint) public balances; 

    // events
    event Sent(address from, address to, uint amount);

    // error
    error InsufficientBalance(uint requested, uint available);


    constructor() {
        minter = msg.sender;
    }
    
    // make new coins, send to address
    // only owner can send coins
    function mint(address _reciever, uint _amout) public {
        require(msg.sender == minter);
        balances[_reciever] += _amount;
    }

    // send any amout of coin 
    // to an exsisting address
    function send(address _reciever, uint _amount) public {
        // require(balances[msg.sender] >= _amount);
        if(amount > balances[msg.sender])
        revert InsufficientBalance({
            requested: _amount,
            available: balances[msg.sender]
        });
        balances[msg.sender] -= _amount;
        balances[_reciever] += _amount;

        emit Sent(msg.sender, _reciever, _amount);
    }
}