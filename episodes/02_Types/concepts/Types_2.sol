// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO Explain the int type

contract Show_Me_A_Sign {

    // ---------------------
    //    State Variables
    // ---------------------

    int public example;

    // Default value
    int public defaultValue;

    // In-line assignment
    int public assignedValue = -35;

    // int == int256
    int public shortDeclaration = -255;
    int256 public longDeclaration = -255;

    // Range of values
    int8 public a = 16;
    int16 public b = 32;
    int24 public c = -64;

}

contract Types_2 is Concept {

    Show_Me_A_Sign SIGN;

    function setUp() public {
        SIGN = new Show_Me_A_Sign();
    }

    // Default value

    function test_Types_2A() public {
        emit Log('SIGN.defaultValue()', SIGN.defaultValue());
        assertEq(SIGN.defaultValue(), 0);
    }

    // Assigned value

    function test_Types_2B() public {
        emit Log('SIGN.assignedValue()', SIGN.assignedValue());
        assertEq(SIGN.assignedValue(), -35);
    }

    // Min and max

    function test_Types_2C() public {

        emit Log('type(int).min', type(int).min);
        emit Log('type(int).max', type(int).max);
        emit Log('type(int256).min', type(int256).min);

        // The maximum of int256 is half the maximum of uint256
    
        emit Log('type(int256).max', type(int256).max);

        emit Log('type(uint256).max', type(uint256).max);
        emit Log('type(uint256).max / 2', type(uint256).max / 2);
        emit Log('type(uint256).max / 2 - 1', type(uint256).max / 2 - 1);

        assertEq(type(int).min, type(int256).min);
        assertEq(type(int).max, type(int256).max);

    }

    // Range is also specified with multiples of 8

    function test_Types_2D() public {
        
        emit Log('type(int8).min', type(int8).min);
        emit Log('type(int8).max', type(int8).max);
        emit Log('type(int16).min', type(int16).min);
        emit Log('type(int16).max', type(int16).max);

        // Minimum value: -(2**N) / 2
        assertEq(type(int8).min, -(2**8) / 2);
        assertEq(type(int16).min, -(2**16) / 2);
        assertEq(type(int24).min, -(2**24) / 2);
        assertEq(type(int32).min, -(2**32) / 2);
        assertEq(type(int128).min, -(2**128) / 2);
        assertEq(type(int256).min, -(2**256) / 2);

        // Maximum value: (2**N) / 2 - 1
        assertEq(type(int8).max, (2**8) / 2 - 1);
        assertEq(type(int16).max, (2**16) / 2 - 1);
        assertEq(type(int24).max, (2**24) / 2 - 1);
        assertEq(type(int32).max, (2**32) / 2 - 1);
        assertEq(type(int128).max, (2**128) / 2 - 1);
        assertEq(type(int256).max, (2**256) / 2 - 1);

    }

}