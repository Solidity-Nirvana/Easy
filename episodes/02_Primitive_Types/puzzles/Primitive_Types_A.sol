// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

// NOTE To solve this puzzle, assign a value in-line to "b" which is greater than the value of "a"
// NOTE This requires modifying one line in the GreaterGood contract

contract GreaterGood {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 public a = 500;
    uint256 public b;

}

contract Primitive_Types_A is Puzzle {

    // Declare a GreaterGood contract variable, "GG"

    GreaterGood GG;

    // Initialize the variable "GG" with a new GreaterGood contract

    function setUp() public {
        GG = new GreaterGood();
    }

    // Validate that the variable "b" is greater than the variable "a"

    function test_P_Primitive_Types_A1() public {
        emit Log("GG.a()", GG.a());
        emit Log("GG.b()", GG.b());
        assert(GG.a() < GG.b());
    }

}