pragma solidity <=0.8.0;

contract arry{
    // Create a funtion taht can fully remove an item from an array
    uint[] public changeArray;
    
    function removeElement (uint i)  public {
        changeArray.push(changeArray[i]);
        changeArray.pop();
    }

    function getLengthOfArray() public view returns (uint){
        return changeArray.length();
    }

    function test() public {
        changeArray.push(1);
        changeArray.push(2);
        changeArray.push(3);
        changeArray.push(4);
    }

    removeElement(1);

}