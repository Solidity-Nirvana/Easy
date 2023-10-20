// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

contract Black_Mirror {

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

contract Functions_A is Puzzle {

    Black_Mirror BM;

    function setUp() public {
        BM = new Black_Mirror();
    }

    // Validate the value of "a"

    function test_P_Functions_A1() public {
        emit Log("BM.a()", BM.a());
        assertEq(BM.a(), 1);
    }

}