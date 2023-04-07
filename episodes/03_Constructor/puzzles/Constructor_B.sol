// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

contract BlackMirror {

    // ---------------------
    //    State Variables
    // ---------------------
    
    uint256 public a;



    // -----------------
    //    Constructor
    // -----------------

    // TODO To solve this puzzle, modify the line below to initialize state variable "a" to 1
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
        emit Log("BM.a()", BM.a());
        assertEq(BM.a(), 1);
    }

}