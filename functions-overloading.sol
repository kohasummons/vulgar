pragma solidity 0.8.0;

// Function overloading is when you have multiple functions
// with the same name in the same scope

// Can have function with same identifier
// as long as the argument list for both
// functions are different

// so either by the number of arguments 
// or the type of arguments

contract FuncOverload {
    function x(bool _lightSwitch) public {
        // --=__-
    }

    function x(uint _wallet) public {
        // -s-ss
    }

    function sumArgs(uint _a, uint _b) external pure returns(uint) {
        return _a + _b;
    }

    function sumArgs(uint _a + uint _b + uint _c) external pure returns(uint) {
        return _a + _b + _c;
    }

    
}