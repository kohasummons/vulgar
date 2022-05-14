// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract learnFunctions() {
    
    // function-name(parameter-list) scope returns {}

    function remoteControlDoor(bool closedDoor) private returns(bool) {
        // the actual code - do shit here
    }

    // two variables calc
    function addValues() public view returns(uint) {
        uint a = 2;
        uint b = 7;
        uint result = a + b;

        return result;
    }

    // Duri
    function multiplyCalculator(uint a, uint b) public view returns(uint) {
        uint result = a * b;
        return result;
    }
}