// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

// can't be deployed, can be inherited?
// base contract
abstract contract Owner {

    // abstract functions possess no implemetation, basically empty
    // Mark as virtual
    function y() public view virtual returns(string memory){};
}


// derived contract
contract X is Owner {
    function y() public override view returns(string memory) {
        return 'Hello!';
    }

}

// still abstract because it has at least one abstract function
// base
abstract contract Member {
    string name;
    uint age = 38;

    // No body therefore abstract
    function setName() public view virtual returns(string memory);

    function returnAge() public view returns(uint) {
        return age;
    }   
}

// derived
contract Teacher is Member {
    function setName() public view override returns(string memory){
        return 'Gorden';
    };
    
}

// base
abstract contract Calculator {
    function genInt() public view virtual returns(uint);
}

// derived
contract Test {
    function genInt() public view override virtual returns(uint){
        return 1 + 2;
    }

}