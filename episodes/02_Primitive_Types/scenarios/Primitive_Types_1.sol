// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

contract Unsigned {

    uint public example;

    // NOTE: The default value for a "uint" is 0.
    uint public defaultValue;

    // NOTE: You can assign a state variable inline.
    uint public assignedValue = 5;

    // NOTE: You can not declare two variables with the same name, in this context "c".
    // uint public assignedValue = 6;

    // NOTE: uint == uint256, "d" and "e" are the same type.
    uint public shortDeclaration = 5;
    uint256 public longDeclaration = 5;

}

contract Primitive_Types_1 is Scenario {

    Unsigned UNS;

    function setUp() public {
        UNS = new Unsigned();
    }

    function test_Primitive_Types_1A() public {
        emit Log(UNS.defaultValue());
        assertEq(UNS.defaultValue(), 0);
    }

    function test_Primitive_Types_1B() public {
        emit Log(UNS.assignedValue());
    }

    function test_Primitive_Types_1C() public {
        emit Log(UNS.c());
        // assert(type(UNS.c()) == uint);s
    }

}