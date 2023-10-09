// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO: Explain "bytes" and "string" types, including their similarities and differences

contract Movie {

    // ---------------------
    //    State Variables
    // ---------------------

    // Dynamically-sized array of bytes1

    bytes public title;

    // Dynamically-sized array of UTF-8-encoded values

    string public description;



    // -----------------
    //    Constructor
    // -----------------

    // When assigning a value to a "bytes" or "string" state variable in the constructor,
    // the parameter must be marked "memory". When a parameter is marked as memory, the data it contains
    // is only stored temporarily during the function call - and not stored on the blockchain for later use.
    // They only exist in memory for that particular transaction, in this case constructor().

    constructor(bytes memory _title, string memory _description) {
        title = _title;
        description = _description;
    }

}

contract Dynamic_Types_1 is Concept {

    Movie NMS3;
    
    function setUp() public {
        NMS3 = new Movie(
            "Need More Speed 3", 
            "Racing through the underground of Tokyo, drifting at 100mph+"
        );
    }

    function test_Dynamic_Types_1A() public {
        
    }

    function test_Dynamic_Types_2A() public {
        
    }

    function test_Dynamic_Types_3A() public {
        
    }

}