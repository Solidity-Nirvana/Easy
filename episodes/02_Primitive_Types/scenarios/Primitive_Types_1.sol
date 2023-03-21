// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

contract Unsigned {

    uint public example;

    // The default value for a "uint" is 0.
    uint public defaultValue;

    // You can assign a state variable inline.
    uint public assignedValue = 5;

    // You can not declare two variables with the same name, in this context "c".
    // uint public assignedValue = 6;

    // You can add values to the end of uint to specify a given range (for gas efficiency)
    uint8 a = 16;
    uint16 b = 0;
    uint24 c = 0;

    // uint == uint256, "d" and "e" are the same type.
    uint public shortDeclaration = 5;
    uint256 public longDeclaration = 5;

}

contract Primitive_Types_1 is Scenario {

    Unsigned UNS;

    function setUp() public {
        UNS = new Unsigned();
    }

    function test_Primitive_Types_1A() public {
        emit Log('UNS.defaultValue()', UNS.defaultValue());
        assertEq(UNS.defaultValue(), 0);
    }

    function test_Primitive_Types_1B() public {
        emit Log('UNS.assignedValue()', UNS.assignedValue());
        assertEq(UNS.assignedValue(), 5);
    }

    function test_Primitive_Types_1C() public {
        // We can view min and max of a given "type" by using the following:
        emit Log('type(uint).min', type(uint).min);
        emit Log('type(uint).max', type(uint).max);
        emit Log('type(uint256).min', type(uint256).min);
        emit Log('type(uint256).max', type(uint256).max);
        
        assertEq(type(uint).min, type(uint256).min);
        assertEq(type(uint).max, type(uint256).max);
    }

    function test_Primitive_Types_1D() public {
        // The number must be a multtiple of 8 when specifiying uint range (uint8, uint16, etc.)
        // The minimum of any unsigned integer is always 0
        // The maximum value of a uint# relates to the equation: 2 ^ # - 1 (e.g. 2^8 - 1 = 255)
        emit Log('type(uint8).max', type(uint8).max);
        emit Log('type(uint16).max', type(uint16).max);
        emit Log('type(uint24).max', type(uint24).max);
        emit Log('type(uint32).max', type(uint32).max);
        emit Log('type(uint128).max', type(uint128).max);
        emit Log('type(uint256).max', type(uint256).max);    // NOTE: uint256 is the maximum, uint8 is the minimum

        assertEq(type(uint8).min, 0);
        assertEq(type(uint16).min, 0);
        assertEq(type(uint24).min, 0);
        assertEq(type(uint32).min, 0);
        assertEq(type(uint128).min, 0);
        assertEq(type(uint256).min, 0);

        assertEq(type(uint8).max, 2**8 - 1);
        assertEq(type(uint16).max, 2**16 - 1);
        assertEq(type(uint24).max, 2**24 - 1);
        assertEq(type(uint32).max, 2**32 - 1);
        assertEq(type(uint128).max, 2**128 - 1);
        assertEq(type(uint256).max, 2**256 - 1);
    }

}