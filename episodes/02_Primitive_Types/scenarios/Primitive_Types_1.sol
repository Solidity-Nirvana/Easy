// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

// TODO Explain the uint type

contract Unsigned {

    // ---------------------
    //    State Variables
    // ---------------------

    uint public example;

    // The default value for "uint" is 0
    uint public defaultValue;

    // You can assign a value to a state variable in-line
    uint public assignedValue = 5;

    // You can not declare two variables with the same name, in this context "assignedValue"
    // uint public assignedValue = 6;

    // You can specify range at the end of uint (for gas efficiency)
    uint8 public a = 20;
    uint16 public b = 100;
    uint24 public c = 3500;

    // uint == uint256, "d" and "e" are the same type
    uint public shortDeclaration = 5;
    uint256 public longDeclaration = 5;

    // There are units called "Ether Units", including: wei, gwei, and ether which represent larger numbers
    uint public weiUnit = 5 wei;
    uint public gweiUnit = 5 gwei;
    uint public etherUnit = 5 ether;

    // There are units called "Time Units", including: seconds, minutes, hours, days, and weeks (not months!)
    uint public exampleTenSeconds = 10 seconds;
    uint public exampleFiveMinutes = 5 minutes;
    uint public exampleEightHours = 8 hours;
    uint public exampleOneDay = 1 days;         // Still plural if only a single time unit
    uint public exampleTwoWeeks = 2 weeks;

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
        // The number must be a multiple of 8 when specifiying uint range (uint8, uint16, etc.)
        // The minimum of any unsigned integer is 0
        // The maximum of an unsigned integer is: 2^N - 1 (e.g. 2^8 - 1 = 255)
        emit Log('type(uint8).max', type(uint8).max);
        emit Log('type(uint16).max', type(uint16).max);
        emit Log('type(uint24).max', type(uint24).max);
        emit Log('type(uint32).max', type(uint32).max);
        emit Log('type(uint128).max', type(uint128).max);
        emit Log('type(uint256).max', type(uint256).max);    // uint256 is the maximum, uint8 is the minimum

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

    function test_Primitive_Types_1E() public {
        emit Log('UNS.weiUnit()', UNS.weiUnit());
        emit Log('UNS.gweiUnit()', UNS.gweiUnit());
        emit Log('UNS.etherUnit()', UNS.etherUnit());

        assertEq(UNS.weiUnit(), 5);
        assertEq(UNS.gweiUnit(), 5 * 10**9);  // 10**9 means 10 to the power of 9
        assertEq(UNS.etherUnit(), 5 * 10**18);
    }

    function test_Primitive_Types_1F() public {
        emit Log('UNS.exampleTenSeconds()', UNS.exampleTenSeconds());
        emit Log('UNS.exampleFiveMinutes()', UNS.exampleFiveMinutes());
        emit Log('UNS.exampleEightHours()', UNS.exampleEightHours());
        emit Log('UNS.exampleOneDay()', UNS.exampleOneDay());
        emit Log('UNS.exampleTwoWeeks()', UNS.exampleTwoWeeks());

        assertEq(UNS.exampleTenSeconds(), 10);
        assertEq(UNS.exampleFiveMinutes(), 5 * 60);
        assertEq(UNS.exampleEightHours(), 8 * 60 * 60);
        assertEq(UNS.exampleOneDay(), 1 * 24 * 60 * 60);
        assertEq(UNS.exampleTwoWeeks(), 2 * 7 * 24 * 60 * 60);
    }

}