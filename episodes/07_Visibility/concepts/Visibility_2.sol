// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO: Explain the "internal" and "private" modifiers, showcase their similarities

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

contract Visibility_2 is Concept {

    Person Marco;

    // Initialize a new HidingInPlainSight contract

    function setUp() public {
        Marco = new Person(18, 150);
    }

    // TypeError: Member "age" not found or not visible after argument-dependent lookup in contract HidingInPlainSight.

    function test_Visibility_2A() public {
        // uint256 getAge = Marco.age();
    }

    // TypeError: Member "weight" not found or not visible after argument-dependent lookup in contract HidingInPlainSight.

    function test_Visibility_2B() public {
        // uint256 getWeight = Marco.weight();
    }

}