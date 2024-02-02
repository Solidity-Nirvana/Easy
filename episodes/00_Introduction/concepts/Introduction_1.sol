// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO Explain the concept file

contract Example {

    // ---------------------
    //    State Variables
    // ---------------------

    bool public easy = true;
    
    uint256 public concepts = 100;
    
    uint256 public puzzles = 80;

}

contract Introduction_1 is Concept {

    // Variables are defined here

    Example EX;

    // This setUp() function is run before each "test_" function below

    function setUp() public {
        EX = new Example();
    }

    // Log a value

    function test_Introduction_1A() public {

        emit Log("EX.easy()", EX.easy());

    }

    // Log a value, assert it equals 100

    function test_Introduction_1B() public {

        emit Log("EX.concepts()", EX.concepts());

        assertEq(EX.concepts(), 100);

    }

    // Log a value, assert it equals 80

    function test_Introduction_1C() public {

        emit Log("EX.puzzles()", EX.puzzles());

        assertEq(EX.puzzles(), 80);

    }

}