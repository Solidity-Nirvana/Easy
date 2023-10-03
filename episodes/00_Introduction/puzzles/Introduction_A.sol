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

// Puzzles are ordered by letters
// Puzzles are intended to be modified
// Puzzles have solutions at www.soliditynirvana.com/episodes (must be enrolled)
// Puzzles will have NOTE tags to explain the objective of the puzzle, which parts should be modified, etc.

// NOTE: Explain to the user (somewhere) that they should work through episodes in sequence

contract Introduction_A is Puzzle {

    Example_Puzzle EP;

    // This setUp() function runs before every other test function below

    function setUp() public {
        EP = new Example_Puzzle();
    }

    // Each "test" function runs independently

    // Validate state variable "a" equals 1

    function test_P_Introduction_A1() public {

        // Puzzles will log outputs to your console with "emit Log()" using the verbosity flag: --verbosity -vvv

        // ├─ emit Log(: EP.a(), : 0)
        emit Log("EP.a()", EP.a());

        // ├─ emit log(: Error: a == b not satisfied [uint])
        // ├─ emit log_named_uint(key:   Expected, val: 1)
        // ├─ emit log_named_uint(key:     Actual, val: 0)
        assertEq(EP.a(), 1);

        // Puzzles will check conditions with "assert()" or "assertEq()", or other advanced means
        // assertEq() - "Expected" value is the 2nd parameter, and the "Actual" value is the 1st parameter
    }

    // Validate state variable "b" equals 2

    function test_P_Introduction_A2() public {
        emit Log("EP.b()", EP.b());
        assertEq(EP.b(), 2);
    }

}