// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

/// @title  Functions, syntax explained
contract Clown_Car {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 public clowns = 10;    /// @notice The amount of clowns in the car




    // ---------------
    //    Functions
    // ---------------

    /// @notice Adds one clown to the clown car
    function addClown() public {
        clowns += 1;
    }

    /// @notice Adds multiple clowns to the clown car
    /// @param amount The number of clowns to add
    function addClowns(uint256 amount) public {
        clowns += amount;
    }

}


contract Functions_1 is Concept {

    Clown_Car CAR;

    function setUp() public {
        CAR = new Clown_Car();
    }

    // View state changes of addClown()

    function test_Functions_1A() public {
        
        // Before
        emit Log('CAR.clowns()', CAR.clowns());

        // Add a clown
        CAR.addClown();

        // After
        emit Log('CAR.clowns()', CAR.clowns());

    }

    // View state changes of addClowns()

    function test_Functions_1B() public { 
        
        // Before
        emit Log('CAR.clowns()', CAR.clowns());

        // Add 100 clowns
        CAR.addClowns(100);

        // After
        emit Log('CAR.clowns()', CAR.clowns());

    }

}

