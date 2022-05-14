contract assemblee{
    function addToEvm() external {
        uint x, y, z = x + y;

        assembly {
            // declare an assembly block
            // ability to manipulate outside var
            // no semi colon,  = is actually :=, bring in opcodes

            let z := add(x, y)

            // load data for a specific slot
            // we bring in mload - temporary memory load
            let a := mload(0x40)

            // store something temporarily to memeory
            // store 4 in a
            mstore(a, 4)

            // persistent storage!
            // payload = 199
            // identifier = a
            sstore(a, 199)

        }
    }

    function addToEvm2() public view returns(bool success) {
        uint size; 
        address addr;

        // does address contain bytes of code?
        assembly {
            size := extcodesize(addr)
        }

        if (size > 0) return {true} else {return false};
    }

}

contract Friz {
    function addToEVM3() external view {
        bytes memory data = new bytes(10);

        // cannot convert to a fixed size
        // bytes32 dataB32 = bytes32(data); ???

        assembly {
            // bytes in momory is size
            // data startas at second position
            let c := mload(add(data, 32))
        }

    }
}