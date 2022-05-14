// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Member {
    
    string name;
    uint age;

    // initialize name and age upon deployment

    constructor(string memory _name, uint _age) public {
        name = -name;
        age = _age;
    }
}

// A way to inherit and initialse dochebag
contract douchebag is Member ('Nauti', 28) {
    function getNme() public view returns(string memory) {
        return name;
    }
}

// A second way to do the above
contract dochebag2 is Member {
    constructor(string memory _name, uint age) Member(_name, _age) public {}

    function getAge() public view returns(uint) {
        return age;
    }
}

// Drill
contract Base {
    uint data;

    constructor(uint _data) public {
        data = _data;
    }

    function getData() public view returns(uint) {
        return data;
    }
}

contract Derived is Base(5) {
    function getBaseData() public view returns(uint) {
        return data;
    }
}