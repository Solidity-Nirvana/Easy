// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

// NOTE To solve this puzzle, you must setup warren as the owner of BERK, and BERK to be the owner of COLA

contract Fortune_500_Company {

    // -----------------
    //    Constructor
    // -----------------
    
    address public owner;

    constructor(address _owner) {
        owner = _owner;
    }

}

contract Constructor_D is Puzzle {

    address warren = address(0xBFFE);

    Fortune_500_Company BERK;
    Fortune_500_Company COLA;

    function setUp() public {
        // Setup can be completed in two lines

        // Contract A is owned by BOB
        BERK = new Fortune_500_Company(warren);

        // Contract B is owned by contract A
        COLA = new Fortune_500_Company(address(BERK));
    }

    // Validate that ComanyB's owner is the same as CompanyA's

    function test_P_Constructor_D1() public {
        assertEq(COLA.owner(), address(BERK));
    }

}