// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract learnStrings() {
    string name;
    string age;

    // use constructor
    constructor(string memory _string, uint _age){
        name = name; age = age;
    }

    string greeting = 'Hello!';
    string favoriteColor = 'blue';

    function getFavouriteColor() public view returns(string memory) {
        return favoriteColor;
    }

     function getFavouriteChar() public view returns(uint) {
         bytes colorToBytes = bytes(favoriteColor);
         return colorToBytes.length;
     

    function sayHello() public view returns(string memory) {
        return greeting;
    }

    function modifyGreeting(string memory _xgreeting) public {
        greeting = _xgreeting;
    }

    function getChar() public view returns(uint) {
        //converst strings to byte, we can return the length
        bytes memory stringToBytes = bytes(greeting);
        return stringToBytes.length; 
    }
}