pragma solidity 0.8.0;

// private // stricted 
// public
// external
// internal

contract a {
    uint globalData = 20;
    function s() public view returns(uint) {
        uint data = 10; // local variable, only available in s
        return data;
    }

    function y() public view returns(uint) {
        return data;
    }
}