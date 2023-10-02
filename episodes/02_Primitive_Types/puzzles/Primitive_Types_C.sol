// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

// NOTE To solve this puzzle, assign the value "whereAreWe" to the address of the contract

contract Lost {

    // ---------------------
    //    State Variables
    // ---------------------

    address public whereAreWe = address(0);

}

contract Primitive_Types_C is Puzzle {

    // Declare a Lost contract variable, "LOST"

    Lost LOST;

    // Initialize the variable "LOST" with a new Lost contract

    function setUp() public {
        LOST = new Lost();
    }

    // Validate that the variable "whereAreWe" is equal to the address of the contract

    function test_P_Primitive_Types_C1() public {
        assertEq(LOST.whereAreWe(), address(LOST));
    }

}