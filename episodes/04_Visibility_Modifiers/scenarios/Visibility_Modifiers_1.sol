// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

// TODO: Explain the "public" modifier.

contract ReadMe {

    // ---------------------
    //    State Variables
    // ---------------------

    // NOTE: Marking a state variable "public" automatically creates a getter function.

    uint256 public age;

    // NOTE: The equivalent function generated:

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

contract Visibility_Modifiers_1 is Scenario {

    ReadMe READ;


    function setUp() public {
        // Initialize a new ReadMe contract.
        READ = new ReadMe(42);
    }


    function test_Visibility_Modifiers_1A() public {
        // Showcase the getter function created, age().
        emit Log(READ.age());
    }

}