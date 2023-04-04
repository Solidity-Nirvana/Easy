// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

// NOTE To solve this puzzle, assign a value in-line to "b" which is greater than the value of "a"
// NOTE This puzzle is solved by modifying one line in the GreaterGood contract

contract GreaterGood {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 public a = 500;
    uint256 public b;

}

contract Primitive_Types_A is Puzzle {

    GreaterGood GG;

    function setUp() public {
        GG = new GreaterGood();
    }

    function test_P_Primitive_Types_A1() public {
        emit Log("GreaterGood.a()", GreaterGood.a());
        emit Log("GreaterGood.b()", GreaterGood.b());
        assert(GreaterGood.a() < GreaterGood.b());
    }

}