// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

// NOTE To solve this puzzle, use the smallest fixed-size bytes possible for the Pet_Rock "name"

contract Pet_Rock {

    // ---------------------
    //    State Variables
    // ---------------------

    bytes16 public name = 'Timmy';

}

contract Primitive_Types_E is Puzzle {

    // Declare a Pet_Rock contract variable, "ROCK"

    Pet_Rock ROCK;

    // Initialize the variable "LIGHT" with a new TurnMeOn contract

    function setUp() public {
        ROCK = new Pet_Rock();
    }

    // Validate that the variable "name" is the smallest fixed-size bytes type

    function test_P_Primitive_Types_E1() public {
        bytes memory encodedName = abi.encodePacked(ROCK.name());
        assert(encodedName.length == 5);
    }

}