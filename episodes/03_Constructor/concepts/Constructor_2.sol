// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO: Explain variable assignment, constructor()

contract Person {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 public age;

    bytes32 public name;



    // -----------------
    //    Constructor
    // -----------------

    // Variable assignment, common style

    constructor(uint256 _age, bytes32 _name) {
        age = _age;
        name = _name;
    }

}

contract Constructor_2 is Concept {

    Person JOE;

    // Deploying, constructor()

    function setUp() public {
        JOE = new Person(42, "Joe");
    }

    // Variable assignment, constructor()

    function test_Constructor_2A() public {
        emit Log('JOE.age()', JOE.age());
        emit Log('JOE.name()', JOE.name());
    }

}