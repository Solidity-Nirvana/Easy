// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

// NOTE To solve this puzzle, detonate the bomb by assigning the correct true/false values to each state variable

contract Bomb {

    // ---------------------
    //    State Variables
    // ---------------------

    bool public greenWire;

    bool public blueWire;

    bool public redWire;

}

contract Primitive_Types_D is Puzzle {

    // Declare a Bomb contract variable, "BIG"

    Bomb BIG;

    // Initialize the variable "BIG" with a new Bomb contract

    function setUp() public {
        BIG = new Bomb();
    }

    // Validate state variable "home" is equal to the address of the contract itself (when deployed)

    function test_P_Primitive_Types_D1() public {
        emit Log("HOME.home()", HOME.home());
        assertEq(HOME.home(), address(HOME));
    }

}