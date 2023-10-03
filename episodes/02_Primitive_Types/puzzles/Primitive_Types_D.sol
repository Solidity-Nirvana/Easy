// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

// NOTE To solve this puzzle, turn this contract on

contract TurnMeOn {

    // ---------------------
    //    State Variables
    // ---------------------

    bool public on;

}

contract Primitive_Types_D is Puzzle {

    // Declare a TurnMeOn contract variable, "LIGHT"

    TurnMeOn LIGHT;

    // Initialize the variable "LIGHT" with a new TurnMeOn contract

    function setUp() public {
        LIGHT = new TurnMeOn();
    }

    // Validate that the contract is turned on (the variable "on" is true)

    function test_P_Primitive_Types_C1() public {
        assert(LIGHT.on());
    }

}