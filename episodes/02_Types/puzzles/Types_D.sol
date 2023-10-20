// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

// NOTE To solve this puzzle, turn this contract on

contract Turn_Me_On {

    // ---------------------
    //    State Variables
    // ---------------------

    bool public on;

}

contract Types_D is Puzzle {

    // Declare a Turn_Me_On contract variable, "LIGHT"

    Turn_Me_On LIGHT;

    // Initialize the variable "LIGHT" with a new Turn_Me_On contract

    function setUp() public {
        LIGHT = new Turn_Me_On();
    }

    // Validate that the contract is turned on (the variable "on" is true)

    function test_P_Types_D1() public {
        assert(LIGHT.on());
    }

}