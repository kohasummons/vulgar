contract Parent {
    uint innerVal = 100;

    function innerAddTen(uint _val) public pure return(uint){
        return _val + 10;
    }
}

contract Child is Parent {
     function outerAddTen(uint _val) public pure returns(uint){
        return Parent.innerAddTen(_val);
    }

    function getInnerVal() public view returns(uint) {
        return Parent.innerVal;
    }
}