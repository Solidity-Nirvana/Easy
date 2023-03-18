// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

// TODO: Explain the "internal" and "private" modifiers, showcase their similarities.

contract Person {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 private age;

    uint256 internal weight;



    // -----------------
    //    Constructor
    // -----------------

    constructor(uint256 _age, uint256 _weight) {
        age = _age;
        weight = _weight;
    }

}

contract Visibility_Modifiers_2 is Scenario {

    Person Marco;

    function setUp() public {
        // Initialize a new HidingInPlainSight contract.
        Marco = new Person(18, 150);
    }

    function test_Visibility_Modifiers_2A() public {
        // TypeError: Member "age" not found or not visible after argument-dependent lookup in contract HidingInPlainSight.
        // uint256 getAge = Marco.age();
    }

    function test_Visibility_Modifiers_2B() public {
        // TypeError: Member "weight" not found or not visible after argument-dependent lookup in contract HidingInPlainSight.
        // uint256 getWeight = Marco.weight();
    }

}