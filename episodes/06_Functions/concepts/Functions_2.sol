// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

/// @title  External modifier, functions
contract Sports_Car {

    // ---------------------
    //    State Variables
    // ---------------------

    bool public started;    /// @notice Whether the car is on or off




    // ---------------
    //    Functions
    // ---------------

    /// @notice Starts the car
    function start() public {
        started = true;
    }

    /// @notice Stops the car
    function stop() external {
        started = false;
    }

    /// @notice Starts the car with a remote
    function startRemote() external {
        start();
    }

}


contract Functions_1 is Concept {

    Sports_Car ZOOM;

    function setUp() public {
        ZOOM = new Sports_Car();
    }

    // View state changes of start()

    function test_Functions_1A() public {
        
        // Before
        emit Log('ZOOM.started()', ZOOM.started());

        // Start the car
        ZOOM.start();

        // After
        emit Log('ZOOM.started()', ZOOM.started());

    }

    // View state changes of start() and stop()

    function test_Functions_1B() public { 
        
        // Before
        emit Log('ZOOM.started()', ZOOM.started());

        // Start the car
        ZOOM.start();

        // After
        emit Log('ZOOM.started()', ZOOM.started());

        // Stop the car
        ZOOM.stop();

        // After
        emit Log('ZOOM.started()', ZOOM.started());

    }

}

