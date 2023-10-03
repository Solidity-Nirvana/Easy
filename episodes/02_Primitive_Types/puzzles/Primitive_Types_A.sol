// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

// NOTE To solve this puzzle, assign a value in-line to "b" which is greater than the value of "a"
// NOTE This requires modifying one line in the Greater_Good contract

contract Greater_Good {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 public a = 500;
    uint256 public b;

}

contract Primitive_Types_A is Puzzle {

    // Declare a Greater_Good contract variable, "GG"

    Greater_Good GG;

    // Initialize the variable "GG" with a new Greater_Good contract

    function setUp() public {
        GG = new Greater_Good();
    }

    // Validate state variable "b" is greater than state variable "a"

    function test_P_Primitive_Types_A1() public {
        emit Log("GG.a()", GG.a());
        emit Log("GG.b()", GG.b());
        assert(GG.a() < GG.b());
    }

}