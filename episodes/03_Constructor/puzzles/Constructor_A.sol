// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

contract PushMyButtons {
    
    uint256 public a;
    uint256 public b;

    constructor(uint256 _a, uint256 _b) {
        a = _a;
        b = _b;
    }

}

// NOTE: To solve this test, initialize the contract "PMB" such that its state variables "a" == 1 and "b" == 2
contract Constructor_A is Puzzle {

    PushMyButtons PMB;

    function setUp() public {
        // HINT: This puzzle is solved with 1 line in this code-block
    }

    function test_P_Constructor_A1() public {
        emit Log("PMB.a()", PMB.a());
        assertEq(PMB.a(), 1);
    }

    function test_P_Constructor_A2() public {
        emit Log("PMB.b()", PMB.b());
        assertEq(PMB.b(), 2);
    }

}