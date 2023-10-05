// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

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

contract Constructor_2 is Concept {

    Person JOE;

    // In order to initialize a new contract, and supply parameters to the constructor(), use the keyword "new"

    function setUp() public {
        JOE = new Person(42, "Joe");
    }

    // Log state variables for "JOE"

    function test_Constructor_2A() public {
        emit Log('JOE.age()', JOE.age());
        emit Log('JOE.name()', JOE.name());
    }

}