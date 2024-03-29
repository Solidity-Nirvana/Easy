// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

// NOTE This puzzle is solved by assigning the value 1 to "a" and the value 2 to "b"

contract Example_Puzzle {

    // ---------------------
    //    State Variables
    // ---------------------
    
    // NOTE Solve this puzzle by updating the two lines below (using an = sign, followed by the correct value)

    uint256 public a;
    uint256 public b;

}

contract Introduction_A is Puzzle {

    Example_Puzzle EP;
    
    function setUp() public {
        EP = new Example_Puzzle();
    }

    // Validate state variable "a" equals 1

    function test_P_Introduction_A1() public {

        emit Log("EP.a()", EP.a());

        assertEq(EP.a(), 1);

    }

    // Validate state variable "b" equals 2

    function test_P_Introduction_A2() public {

        emit Log("EP.b()", EP.b());

        assertEq(EP.b(), 2);
        
    }

}