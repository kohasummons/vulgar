// Mapping

contract Mappingg {
    // Key and Value
    // key can be string, uint, bool
    // value can be anything

    mapping(address => uint) public balances;

    function setAddress(address _addr, uint _i) public {
        balances[_addr] = _i;
    }

    function getAddress(address _addr) public view returns(uint) {
        return balances[_addr];
    }

    function removeAddress[address _addr] public {
        delete balances[_addr];
    }
}

contract MapAsssignment {
    struct public Movie {
        string title;
        string director
    };

    mapping(uint => Movie) movie;

    function addMovie(uint _id, string memory _title, string memory _director) public {
        movie[_id] = Movie(_title, _director);
    }

}

contract NestedMapping is MapAsssignment {

    mapping(address => mapping(uint => Movie)) public junoMovie

    function addMovie(address _whose, uint _id, string memory _title, string memory _director) public {
        junoMovie[_whose][_id] = Movie(_title, _director);
    }

}