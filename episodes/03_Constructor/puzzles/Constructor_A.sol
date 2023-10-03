// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

// NOTE To solve this puzzle, initialize the variable "PMB" such that the Push_My_Butons contract
//      has state variables "a" == 1 and "b" == 2.

contract Push_My_Buttons {

    // ---------------------
    //    State Variables
    // ---------------------
    
    uint256 public a;
    uint256 public b;

    

    // -----------------
    //    Constructor
    // -----------------

    constructor(uint256 _a, uint256 _b) {
        a = _a;
        b = _b;
    }

}

contract Constructor_A is Puzzle {

    Push_My_Buttons PMB;

    function setUp() public {

        // NOTE This puzzle is solved with 1 line in this code block

    }

    // Validate the value of "a"

    function test_P_Constructor_A1() public {
        emit Log("PMB.a()", PMB.a());
        assertEq(PMB.a(), 1);
    }

    // Validate the value of "b"

    function test_P_Constructor_A2() public {
        emit Log("PMB.b()", PMB.b());
        assertEq(PMB.b(), 2);
    }

}