contract Owner {
    address owner;

    // Set owner to caller on deploy
    constructor() public {
        owner = msg.sender;
    }

    // Modifiers
    modifier costs(uint _price) {
        require(msg.value >= _price);
        _;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
}

contract Register is Owner {
    mapping(address => bool) registeredAddresses;
    uint price;
    constructor(uint _initialPrice){price = _initialPrice;}

    

    function register() public payable costs(price) {
        registeredAddresses[msg.sender] = true;
    }

    function changePrice(uint _price) public onlyOwner{
        price = _price;
    }
}
