// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract Defi {
    uint stakingWallet = 10;
    
    function airDrop() public view returns(uint) {
        if (stakingWallet == 10) {
            return stakingWallet + 10;
        } else {
            return stakingWallet + 1;
        }
    }
}