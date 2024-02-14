// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

// TODO Explain what a scenario is

contract Example {

    // ---------------------
    //    State Variables
    // ---------------------

    bool public easy = true;
    
    uint256 public scenarios = 100;
    
    uint256 public puzzles = 80;

}

contract Introduction_1 is Scenario {

    // Variables for the scenario

    Example EX;

    // This function sets up the scenario, runs before all test-cases

    function setUp() public {
        EX = new Example();     // Deploying a new contract for variable "EX"
    }

    // Logs a variable, makes an assertion on a boolean

    function test_Introduction_1A() public {
        
        emit Log("EX.easy()", EX.easy());

        assert(EX.easy());
    }

    // Logs a variable, makes an equal assertion between two variables

    function test_Introduction_1B() public {
        
        emit Log("EX.scenarios()", EX.scenarios());
        emit Log("EX.puzzles()", EX.puzzles());

        assertEq(EX.scenarios(), 100);
        assertEq(EX.puzzles(), 80);
    }

}