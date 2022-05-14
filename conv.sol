// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

import "hardhat/console.sol";


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




// contract Conv {
//     // uint32 a = 0x12345678;
//     // uint16 b = uint16(a);
    
//     // function getB() public view returns(uint16) {
//     //     return b;
//     // }
//     assert(100000000000000000 wei == 1 ether);
//     assert(2 ether == 2e18);

//     function excersise() public {
//         assert(1 minutes == 60 seconds);
//         assert(1 hours == 60 minutes);
//         assert(1 days == 24 hours);
//     }
// }