// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

// NOTE To solve this puzzle, assign a value in-line to "b" which is greater than the value of "a"
// NOTE This requires modifying one line in the GreaterGood contract

contract TheMeaningOfLife {

    // ---------------------
    //    State Variables
    // ---------------------

    address public life = address(42);

}

contract Primitive_Types_C is Puzzle {

    // Declare a TheMeaningOfLife contract variable, "LIFE"

    TheMeaningOfLife LIFE;

    // Initialize the variable "LIFE" with a new TheMeaningOfLife contract

    function setUp() public {
        LIFE = new TheMeaningOfLife();
    }

    // Validate state variable "b" is greater than state variable "a"

    function test_P_Primitive_Types_A1() public {
        emit Log("GG.a()", GG.a());
        emit Log("GG.b()", GG.b());
        assert(GG.a() < GG.b());
    }

}