library Search {
    // return index value of requested integer
    function indexOf(uint[] storage _self, uint _value) public view returns(uint) {
        for(uint i = 0; i < self.length; i++) {
            if(_self[i] == _value) return i;
        }
    }
}




contract zio {
    uint[] data;
    constructor() public {
        for(uint i = 0; i <= 5; i++) data.push(i);
    }

    function isValuePresent(uint _value) {
        uint value = _value;
        uint index = Search.indexOF(data, _value);
        return index;
    }
}


// Exert thyself
library Search2 {
    // return index value of requested integer
    function indexOf(uint[] storage _self, uint _value) public view returns(uint) {
        for(uint i = 0; i < self.length; i++) {
            if(_self[i] == _value) return i;
        }
    }
}




contract zio2 {
    // adds the library fuctions to the uint[] datatype
    // every functions has the first parameter set to `self` i.e itself
    using Search2 for uint[];
    uint[] data;

    constructor() public {
        for(uint i = 0; i <= 5; i++) data.push(i);
    }

    function isValuePresent(uint _value) {
        uint value = _value;
        uint index = data.indexOF(_value);
        return index;
    }
}