// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO: Showcase a common use-case for constructors, msg.sender

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

contract Constructor_3 is Concept {

    House CASA;

    function setUp() public {
        CASA = new House();
    }

    // Variable assignment, constructor()

    function test_Constructor_3A() public {

        emit Log('address(this)', address(this));
        emit Log('CASA.owner()', CASA.owner());

        assertEq(CASA.owner(), address(this));
        
    }

}