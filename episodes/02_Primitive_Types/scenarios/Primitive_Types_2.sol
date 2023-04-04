// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

contract Signed {

    // ---------------------
    //    State Variables
    // ---------------------

    int public example;

    // The default value for an "int" is 0
    int public defaultValue;

    // You can assign negative values to int
    int public assignedValue = -35;

    // Similar to uint, you can specify a given range (for gas efficiency)
    int8 a = 16;
    int16 b = 32;
    int24 c = -64;

    // int == int256, "d" and "e" are the same type
    int public shortDeclaration = -255;
    int256 public longDeclaration = -255;

    // You can utilize scientific notation, this takes the form: MeE ... M * 10**E
    int96 public scientificNotation = 2e3;

    // You can separate numbers for readibility purposes with underscores
    int128 public underscore = 1_000_000;
    int128 public underscoreEther = 1_000_000 ether;

}

contract Primitive_Types_2 is Scenario {

    Signed SIGN;

    function setUp() public {
        SIGN = new Signed();
    }

    function test_Primitive_Types_2A() public {
        emit Log('SIGN.defaultValue()', SIGN.defaultValue());
        assertEq(SIGN.defaultValue(), 0);
    }

    function test_Primitive_Types_2B() public {
        emit Log('SIGN.assignedValue()', SIGN.assignedValue());
        assertEq(SIGN.assignedValue(), -35);
    }

    function test_Primitive_Types_2C() public {
        emit Log('type(int).min', type(int).min);
        emit Log('type(int).max', type(int).max);
        emit Log('type(int256).min', type(int256).min);
        emit Log('type(int256).max', type(int256).max);
        emit Log('type(uint256).max', type(uint256).max);

        // The maximum of uint256 is twince of int256, see:
        // https://www.calculator.net/big-number-calculator.html?cx=57896044618658097711785492504343953926634992332820282019728792003956564819967&cy=2&cp=20&co=multiple
        
        assertEq(type(int).min, type(int256).min);
        assertEq(type(int).max, type(int256).max);
    }

    function test_Primitive_Types_2D() public {
        // Similar to uint, multiples of ranged int must be 8
        emit Log('type(int8).min', type(int8).min);
        emit Log('type(int8).max', type(int8).max);
        emit Log('type(int16).min', type(int16).min);
        emit Log('type(int16).max', type(int16).max);
    }

    function test_Primitive_Types_2E() public {
        emit Log('SIGN.scientificNotation()', SIGN.scientificNotation());
        assertEq(SIGN.scientificNotation(), 2000);
    }

    function test_Primitive_Types_2F() public {
        emit Log('SIGN.underscore()', SIGN.underscore());
        emit Log('SIGN.underscoreEther()', SIGN.underscoreEther());
        assertEq(SIGN.underscore(), 1000000);
        assertEq(SIGN.underscore(), 1_000_000);
        assertEq(SIGN.underscoreEther(), 1000000 * 10**18);
        assertEq(SIGN.underscoreEther(), 1_000_000 * 10**18);
        assertEq(SIGN.underscoreEther(), 1_000_000 ether);
    }

}