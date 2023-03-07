// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.16;

import "utils/Scenario.sol";

// TODO: Explain the "internal" and "private" modifiers.

contract HidingInPlainSight {

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

    HidingInPlainSight HIPS;

    function setUp() public {
        // Initialize a new HidingInPlainSight contract.
        HIPS = new HidingInPlainSight(18, 150);
    }

    function test_Visibility_Modifiers_2A() public {
        // TypeError: Member "age" not found or not visible after argument-dependent lookup in contract HidingInPlainSight.
        // uint256 getAge = HIPS.age();
    }

    function test_Visibility_Modifiers_2B() public {
        // TypeError: Member "weight" not found or not visible after argument-dependent lookup in contract HidingInPlainSight.
        // uint256 getWeight = HIPS.weight();
    }

}