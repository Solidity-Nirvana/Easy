// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

/// @notice Explains the Immutable modifier.

// TODO Heavily revise this contract

contract NonStarter {

    // ---------------------
    //    State Variables
    // ---------------------

    // You can mark all variable types as "constant", however they then MUST be defined in-line

    // It's standard to use all upper-case letters for "constant" variables

    address public constant OWNER = address(42);

    bool public constant MALE = false;

    uint256 public constant AGE = 50;

    string public constant NAME = 'Jackie';

    // Can't use "constant" type for arrays (dynamic or fixed-size), just like "immutable"

    // uint256[] constant KIDS;

    // uint256[4] constant KIDS_FOUR;


    // -----------------
    //    Constructor
    // -----------------

    constructor(string memory _name) {
        // The "constant" modifier does not allow assignment in constructor
        // name = _name;
    }



    // ---------------
    //    Functions
    // ---------------

    // State variables marked "constant" cannot be modified, these functions do not compile

    // function changeName(string _name) public {
    //     name = _name;
    // }

    // function changeName(string _name) public {
    //     name = _name;
    // }

}

contract Variable_Modifiers_5 is Scenario {

    NonStarter NS;

    function setUp() public {
        
    }

    function test_Variable_Modifiers_5A() public {
        NS = new NonStarter('null');
        assertEq(NS.NAME(), 'Jackie');
    }

}