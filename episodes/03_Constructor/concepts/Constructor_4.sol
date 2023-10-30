// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO: Showcase order of operations

contract Shape {

    // ---------------------
    //    State Variables
    // ---------------------

    uint public sides = 5;



    // -----------------
    //    Constructor
    // -----------------

    constructor(uint _sides) {
        sides = _sides;
    }

}

contract Constructor_4 is Concept {

    Shape TRI;

    function setUp() public {
        TRI = new Shape(3);
    }

    // Variable assignment, constructor()

    function test_Constructor_4A() public {
        
        // Question - Will the contract "TRI" have 5 sides or 3 sides

        emit Log('TRI.sides()', TRI.sides());
        
        // Question - Does order of code matter in this context?

    }

}