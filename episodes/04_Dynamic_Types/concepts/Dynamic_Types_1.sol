// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO: Explain the "bytes" and "string" types, and differences between the two

contract Letter {

    // ---------------------
    //    State Variables
    // ---------------------

    bytes public title;

    string public description;



    // -----------------
    //    Constructor
    // -----------------

    // TODO Explain "WHY" bytes and string types need to have memory/storage tags in parameter inputs ...

    constructor(bytes memory _title, string memory _description) {
        
    }

}

contract Dynamic_Types_1 is Concept {

    Letter NOTE;
    
    function setUp() public {
        
    }

    function test_Dynamic_Types_1A() public {
        
    }

}