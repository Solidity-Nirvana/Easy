// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.16;

import "utils/Scenario.sol";

// NOTE: Explains the "public" modifier.

contract ReadMe {
    
    // ---------------------
    //    State Variables
    // ---------------------

    // NOTE: Marking a state variable "public" automatically creates a getter function.
    
    uint256 public age;

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

    ReadMe RME;

    function setUp() public {
        RME = new ReadMe(42);
    }

    function test_Visibility_Modifiers_1A() public {
        emit Log(RME.age());
    }

}
