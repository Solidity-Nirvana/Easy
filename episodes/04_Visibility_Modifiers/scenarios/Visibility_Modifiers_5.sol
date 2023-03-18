// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

/// @notice Explains the Immutable modifier.

contract NonStarter {

    // ---------------------
    //    State Variables
    // ---------------------

    // NOTE: You can mark all variable types as "constant", these must be defined in-line.

    // NOTE: It is considered best practice to use all upper-case with "constant" variables.

    address public constant OWNER = address(42);

    bool public constant MALE = false;

    uint256 public constant AGE = 50;

    string public constant NAME = 'Jackie';

    // NOTE: Can't use "constant" type for arrays (dynamic or fixed-size), just like "immutable".

    // uint256[] constant KIDS;

    // uint256[4] constant KIDS_FOUR;


    // -----------------
    //    Constructor
    // -----------------

    constructor(string memory _name) {
        // NOTE: The "constant" modifier does not allow assignment in constructor.
        // name = _name;
    }



    // ---------------
    //    Functions
    // ---------------

    // NOTE: State variables marked "constant" cannot be modified, these functions do not compile. 

    // function changeName(string _name) public {
    //     name = _name;
    // }

    // function changeName(string _name) public {
    //     name = _name;
    // }

}

contract Visibility_Modifiers_5 is Scenario {

    NonStarter NS;

    function setUp() public {
        
    }

    function test_Visibility_Modifiers_5A() public {
        NS = new NonStarter('null');
        assertEq(NS.NAME(), 'Jackie');
    }

}