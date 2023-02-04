// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.16;

import "utils/Puzzle.sol";

contract Puzzle_2a is Puzzle {
    
    uint8 test;

    // Initial setUp() function, runs before every test_*.
    function setUp() public {
        test = 42;

    }

    function test_initial() public {
        assertEq(test, 42);

    }

}