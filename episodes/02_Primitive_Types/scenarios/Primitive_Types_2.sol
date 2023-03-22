// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

contract Signed {

    int public example;

    // NOTE: The default value for an "int" is 0
    int public defaultValue;

    // NOTE: You can assign negative values to int
    int public assignedValue = -35;

    // NOTE: Similar to uint, with int you can specify a given range (for gas efficiency)
    int8 a = 16;
    int16 b = 0;
    int24 c = 0;

    // NOTE: You can utilize scientific notation, this takes the form: MeE ... M * 10**E
    int96 scientificNotation = 3e18;

    // NOTE: You can separate numbers for readibility purposes with underscores
    int128 underscore = 1_000_000;

    // NOTE: uint == uint256, "d" and "e" are the same type
    uint public shortDeclaration = 5;
    uint256 public longDeclaration = 5;

}

contract Primitive_Types_2 is Scenario {

    function setUp() public {
        
    }

    function test_Primitive_Types_2A() public {
        
    }

}