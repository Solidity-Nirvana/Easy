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
    
    uint256 public scenarios = 600;
    
    uint256 public puzzles = 350;

}

// Scenarios have a core contract with the title of the episode ("Introduction") followed by a number
// Scenarios are ordered by numbers
// Scenarios are not intended to be modified
// Scenarios have explantory videos at www.soliditynirvana.com (must be registered to access)
contract Introduction_1 is Scenario {

    // Variables for a scenario are defined at the top
    Example EX;

    // This setUp() function runs before every other "test_" function
    function setUp() public {
        // This is the command to initialize a new contract.
        EX = new Example();
    }

    // Each of the three functions below will run independently, after setUp() is called, they do not affect each other
    // In order to run these functions, use the command "forge test --match _Introduction_1" in the CLI
    // In order to view more information in the command line, add to the command "--verbosity -vvv"

    function test_Introduction_1A() public {
        // ├─ emit Log(: EX.easy(), : true)
        emit Log("EX.easy()", EX.easy());
        assert(EX.easy());
    }

    function test_Introduction_1B() public {
        emit Log("EX.scenarios()", EX.scenarios());
        assertEq(EX.scenarios(), 600);
    }

    function test_Introduction_1C() public {
        emit Log("EX.puzzles()", EX.puzzles());
        assertEq(EX.puzzles(), 350);
    }

}