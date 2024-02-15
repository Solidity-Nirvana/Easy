// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

// NOTE To solve this puzzle, a value to home in-line that matches the address of the contract itself

contract HomeIsWhere {

    // ---------------------
    //    State Variables
    // ---------------------

    address public home;

}

contract Primitive_Types_C is Puzzle {

    // Declare a HomeIsWhere contract variable, "HOME"

    HomeIsWhere HOME;

    // Initialize the variable "HOME" with a new HomeIsWhere contract

    function setUp() public {
        HOME = new HomeIsWhere();
    }

    // Validate state variable "home" is equal to the address of the contract itself (when deployed)

    function test_P_Primitive_Types_C1() public {
        emit Log("HOME.home()", HOME.home());
        assertEq(HOME.home(), address(HOME));
    }

}