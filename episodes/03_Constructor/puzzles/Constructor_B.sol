// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

contract BlackMirror {
    
    uint256 public a;

    // NOTE To solve this puzzle, you must modify the constructor so the state variable "a" has a value of 1.
    constructor() {
        uint256 a = 0;
    }

}

contract Constructor_B is Puzzle {

    BlackMirror BM;

    function setUp() public {
        BM = new BlackMirror();
    }

    function test_P_Constructor_B1() public {
        assertEq(BM.a(), 1);
    }

}