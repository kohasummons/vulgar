pragma solidity 0.8.0;

contract loogContract {

    uint [] public numbersList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 

    function checkMultipleValidty(uint _num, uint _nums) public view returns(bool) {
        if (_num % _nums == 0) {
            return true;
        } else {
            return false;
        }
    }

    function checkMultiples(uint _number) public view returns(uint) {
        uint count = 0;
        for (uint256 i = 0; i < numbersList.length; i++) {
            if(checkMultipleValidty(numbersList[i], _number)) {
                count++;
            }
        }
        return count;
    }

}