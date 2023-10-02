// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

// NOTE To solve this puzzle, you must think deeply about deploying new contracts, and the meaning of life

contract TheMeaningOfLife {

    // ---------------------
    //    State Variables
    // ---------------------

    address public life;



    // -----------------
    //    Constructor
    // -----------------
    
    constructor(address meaning) {
        life = meaning;
    }

}

contract Constructor_C is Puzzle {

    TheMeaningOfLife LIFE;

    function setUp() public {
        LIFE = TheMeaningOfLife(address(42));
    }

    // Validate that the meaning of "life" is 42

    function test_P_Constructor_C1() public {
        assertEq(LIFE.life(), address(42));
    }

}