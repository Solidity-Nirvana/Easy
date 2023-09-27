// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

// TODO Explain the basic components of a scenario
// Scenarios have TODO tags (at the top) which describe what will be demonstrated or explained

// Scenarios have one or more contracts (or other elements, i.e libraries and interfaces) defined above

contract Example {

    // ---------------------
    //    State Variables
    // ---------------------

    bool public easy = true;
    
    uint256 public scenarios = 100;
    
    uint256 public puzzles = 80;

}

// Scenarios are ordered by numbers
// Scenarios are not intended to be modified
// Scenarios have explantory videos at www.soliditynirvana.com/episodes (must be enrolled)

contract Introduction_1 is Scenario {

    // Variables are defined here (by type, and then by variable name)
    // "Example" is the type of variable we are creating, this case in reference to the Example contract
    // "EX" is the name of the variable

    Example EX;

    // This setUp() function runs before every other test function below.

    function setUp() public {
        
        // This is the command to initialize a new contract.
        EX = new Example();
    }

    // Each of the three functions below will run independently, after setUp() is called, they do not affect each other
    // In order to run these functions, use the command "forge test --match _Introduction_1" in the CLI
    // In order to log information in the CLI (command line interface), add "--verbosity -vvv" to the command

    // Showcase a log of the boolean state variable "easy"

    // TODO Consider explaining what it means for a "test" function to pass

    function test_Introduction_1A() public {
        
        // Emit the log
        emit Log("EX.easy()", EX.easy());

        // Use assert() to validate a boolean input is true
        assert(EX.easy());
    }

    // Showcase a log of the unsigned integer state variable "scenarios"

    function test_Introduction_1B() public {
        
        // Emit the log
        emit Log("EX.scenarios()", EX.scenarios());

        // Use assertEq() to compare two primitive types are equal
        assertEq(EX.scenarios(), 100);
    }

    // Showcase a log of the unsinged integer state variable "puzzles"

    function test_Introduction_1C() public {

        // Emit the log
        emit Log("EX.puzzles()", EX.puzzles());

        // Use assertEq() to compare, the first is the observed value and the second is the expected value
        assertEq(EX.puzzles(), 80);
    }

}