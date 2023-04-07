// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

// TODO: Explain the basics of a constructor

contract Person {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 public age;

    bytes32 public name;



    // -----------------
    //    Constructor
    // -----------------

    // The recommended style for input parameters that overlap with state variables is to
    // add an underscore to the beginning - or the end - stay consistent in your choice.

    constructor(uint256 _age, bytes32 _name) {
        age = _age;
        name = _name;
    }


}

contract Constructor_2 is Scenario {

    Person JOE;

    function setUp() public {
        // Initialize a new Person contract
        JOE = new Person(42, "Joe");
    }

    function test_Constructor_2A() public {
        // View the information available on JOE
        emit Log('JOE.age()', JOE.age());
        emit Log('JOE.name()', JOE.name());
    }

}