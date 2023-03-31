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

    constructor() {
        owner = msg.sender;
    }

}

contract Constructor_3 is Scenario {

    House CASA;

    function setUp() public {
        // Initialize a new Person contract
        CASA = new House();
    }


    function test_Constructor_2A() public {
        // View the information available on CASA
        emit Log('CASA.owner()', CASA.owner());
    }

}