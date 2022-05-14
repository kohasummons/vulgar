pragma solidity 0.8.4;

contract looper{
    address owner;
    // mapping(address => uint) contributedAmount;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender = owner, 'You are not the owner!');
        _;
    }

    function returnFunds() public returns(bool success) {
        for(uint i = 0, i < funders.length; i++){
            funders[i].transfer(contributedAmount);
        }
        return true
    }

    function returnFundsX() public onlyOwner returns(bool success) {
        jerochim.transfer(contributedAmount);
        anifa.transfer(contributedAmount);
    }
    
    function sendFundsToTatianna(uint _amount) public onlyOwner returns(bool success) {
        if(!Tatianna.send(_amount)){
            // handle failure
        }

        // Not the best, can get messy
        
        Tatianna.send(_amount);
        return true
    }

    // 

    fallback() external payable{}
}

contract Victim {
    // check if an address is a contract, 
    // if there are byes of code greater that zero is a contract!
    function isItAContract() public view returns(bool){
        uint32 size;
        address a = msg.sender;

        // inline assembly accesses teh EVM
        // extcodesize grabs/retrieves the size of the code
        assembly {
            size := extcodesize(a);
        }

        return(size > 0);
    }
}

contract Attacker {
    bool public tricker;
    Victim victim;

    // 
    constructor (address _v) {
        victim = Victim(_v)
        tricker = !victim.isItAContract();
    }
}

// A withdrawal functions so investors can withdraw funds on their own
// Let them do it themselees

// A function to claimRefunds, 
// requires that balance of caller is > 0 and transfers balance

function claimRefunds() public returns(bool) {
    require(balances[msg.sender] > 0, 'You are broke!');
    // balances[owner] -= amount;
    (msg.sender).transfer(balances[msg.sender]);
}

function withdrawFunds(uint _amount) public returns(bool success) {
    require(balances[msg.sender] >= _amount, 'You are broke!'); // guards
    balances[msg.sender] -= _amount;// Optimistic Accounting
    (msg.sender).transfer(_amount);

    return true;
}