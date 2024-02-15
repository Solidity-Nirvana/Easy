// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO Explain the uint type

contract Unsigned {

    // ---------------------
    //    State Variables
    // ---------------------

    uint simple;

    uint public example;

    // Default value
    uint public defaultValue;

    // In-line assignment
    uint public assignedValue = 5;

    // Naming conflict
    // uint public assignedValue = 6;

    // uint == uint256
    uint public shortDeclaration = 5;
    uint256 public longDeclaration = 5;

    // Range of values
    uint8 public a = 64;
    uint16 public b = 100;
    uint24 public c = 3500;

}

contract Types_1 is Concept {

    Unsigned UNS;

    function setUp() public {
        UNS = new Unsigned();
    }

    // Default value

    function test_Types_1A() public {
        emit Log('UNS.defaultValue()', UNS.defaultValue());
        assertEq(UNS.defaultValue(), 0);
    }

    // Asisgned value

    function test_Types_1B() public {
        emit Log('UNS.assignedValue()', UNS.assignedValue());
        assertEq(UNS.assignedValue(), 5);
    }

    // Min and max

    function test_Types_1C() public {

        emit Log('type(uint).min', type(uint).min);
        emit Log('type(uint).max', type(uint).max);
        emit Log('type(uint256).min', type(uint256).min);
        emit Log('type(uint256).max', type(uint256).max);
        
        assertEq(type(uint).min, type(uint256).min);
        assertEq(type(uint).max, type(uint256).max);

    }

    // Range is specified with multiples of 8

    function test_Types_1D() public {

        emit Log('type(uint8).max', type(uint8).max);       // uint8 is the minimum
        emit Log('type(uint16).max', type(uint16).max);
        emit Log('type(uint24).max', type(uint24).max);
        emit Log('type(uint32).max', type(uint32).max);
        emit Log('type(uint128).max', type(uint128).max);
        emit Log('type(uint256).max', type(uint256).max);   // uint256 is the maximum

        // Minimum value: 0
        assertEq(type(uint8).min, 0);
        assertEq(type(uint16).min, 0);
        assertEq(type(uint24).min, 0);
        assertEq(type(uint32).min, 0);
        assertEq(type(uint128).min, 0);
        assertEq(type(uint256).min, 0);

        // Maximum value: 2^N - 1 (e.g. 2^8 - 1 = 255)
        assertEq(type(uint8).max, 2**8 - 1);
        assertEq(type(uint16).max, 2**16 - 1);
        assertEq(type(uint24).max, 2**24 - 1);
        assertEq(type(uint32).max, 2**32 - 1);
        assertEq(type(uint128).max, 2**128 - 1);
        assertEq(type(uint256).max, 2**256 - 1);
        
    }

}