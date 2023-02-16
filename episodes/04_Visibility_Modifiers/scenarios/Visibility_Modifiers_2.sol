// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.16;

import "utils/Scenario.sol";

/// @notice Explains the Internal and Private modifier.

contract Hiding {
    
    // ---------------------
    //    State Variables
    // ---------------------

    uint256 internal weight;

    uint256 private age;



    // -----------------
    //    Constructor
    // -----------------

    constructor(uint256 _weight, uint256 _age) {
        weight = _weight;
        age = _age;
    }

}

contract Visibility_Modifiers_2 is Scenario {

    Hiding HIDE;

    function setUp() public {
        HIDE = new Hiding(18, 150);
    }

    function test_Visibility_Modifiers_2A() public {
        // uint256 getAge = HIDE.age();
    }

    function test_Visibility_Modifiers_2B() public { 
        // uint256 getWeight = HIDE.weight();
    }

}