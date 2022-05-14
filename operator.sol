// SPDX-License-Identifier
pragma solidity 0.8.0;

contract operator {
    uint a = 300;
    uint b = 12;
    uint f = 47;

    function finalize() public view returns(){
        uint d = 23;
        if ( a > b && b < f) {
            return d *= d - b;
        } else {
            return d
        }
    }
}