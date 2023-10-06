// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

// TODO: Showcase a common design pattern for constructors

contract House {

    // ---------------------
    //    State Variables
    // ---------------------

    address public owner;



    // -----------------
    //    Constructor
    // -----------------

    // The constructor only runs once at deployment, and can never run again

    constructor() {
        owner = msg.sender;
    }

}

contract Constructor_3 is Scenario {

    House CASA;

    function setUp() public {
        CASA = new House();
    }

    // View ownership information for "CASA"

    function test_Constructor_3A() public {
        emit Log('CASA.owner()', CASA.owner());
        assertEq(CASA.owner(), address(this));
    }

}