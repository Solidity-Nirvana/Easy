// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.16;

import "utils/Puzzle.sol";

contract PushMyButtons {
    
    uint256 public a;
    uint256 public b;

    constructor(uint256 _a, uint256 _b) {
        a = _a;
        b = _b;
    }

}

// NOTE: To solve this test, initialize the contract "PMB" such that its state variables "a" == 1 and "b" == 2.
contract Constructor_A is Puzzle {

    PushMyButtons PMB;

    function setUp() public {
        
    }

    function test_Constructor_A1() public {
        assertEq(PMB.a(), 1);
    }

    function test_Constructor_A2() public {
        assertEq(PMB.b(), 2);
    }

}