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
        LIFE = TheMeaningOfLife(address(42));
    }

    // Validate the meaning of life is 42

    function test_P_Primitive_Types_C1() public {
        assertEq(LIFE.life(), address(42));
    }

}