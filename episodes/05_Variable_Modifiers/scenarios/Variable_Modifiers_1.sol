// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO: Explain the "public" modifier

contract ReadMe {

    // ---------------------
    //    State Variables
    // ---------------------

    // Marking a state variable "public" automatically creates a getter function

    uint256 public age;

    // The equivalent function generated:

    // function age() public view returns (uint256) {
    //     return age;
    // }



    // -----------------
    //    Constructor
    // -----------------

    constructor(uint256 _age) {
        age = _age;
    }

}

contract Variable_Modifiers_1 is Concept {

    ReadMe READ;

    // Initialize a new ReadMe contract

    function setUp() public {
        READ = new ReadMe(42);
    }

    // Showcase the getter function created, age()

    function test_Variable_Modifiers_1A() public {
        emit Log('READ.age()', READ.age());
    }

}