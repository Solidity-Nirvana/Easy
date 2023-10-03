// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

// NOTE To solve this puzzle, you must setup "Warren" as the owner of BERK, and BERK as the owner of COLA

contract Fortune_500 {

    // -----------------
    //    Constructor
    // -----------------

    address public owner;

    constructor(address _owner) {
        owner = _owner;
    }

}

contract Constructor_C is Puzzle {

    address Warren = address(0xBFFE);

    Fortune_500 BERK;
    Fortune_500 COLA;

    function setUp() public {
        
        // This puzzle is solved by initializing BERK and COLA below

        BERK = new Fortune_500(Warren);
        COLA = new Fortune_500(address(BERK));

    }

    // Validate that "Warren" owns BERK

    function test_P_Constructor_C1() public {
        assertEq(BERK.owner(), Warren);
    }

    // Validate that BERK owns COLA

    function test_P_Constructor_C2() public {
        assertEq(COLA.owner(), address(BERK));
    }

}