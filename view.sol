pragma solidity 0.8.0;

//view - only read state, never modidfy state
// Pure - do not read state, nor modify it, returns calculations

contract Vue {
    uint value;

    function setValue(uint _value) external {
        value = _value;
    }

    function getValue() external view returns(uint) {
        return value;
    }

    function getNewValue() external pure returns(uint) {
        return 3 + 3;
    }

    function multiply() external pure returns(uint) {
        return 3 * 7;
    }

    // not chainging the value, just reading it
    function valuePlusThree() external view returns(uint) {
        return value + 3;
    }
}