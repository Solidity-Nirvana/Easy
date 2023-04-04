// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

contract Home {

    // ---------------------
    //    State Variables
    // ---------------------

    // The default value of an address is 0x00000000000000000000000000000000000000
    // The default value of an address is address(0)
    address public home;

    // Values can be assigned in two different forms, use typecasting
    address public longWay = address(0x0000000000000000000000000000000000042A);
    address public shortWay = address(0x42A);

    // TODO Confirm if address values need to be check-summed
    // TODO Add link here that shows how to check-sum a value
    // TODO Show automatic check-sum in log

}

contract Primitive_Types_3 is Scenario {

    Home HOME;

    function setUp() public {
        HOME = new Home();
    }

    function test_Primitive_Types_3A() public {
        emit Log("HOME.home()", HOME.home());
    }

    function test_Primitive_Types_3B() public {
        emit Log("HOME.longWay()", HOME.longWay());
        emit Log("HOME.shortWay()", HOME.shortWay());
        assertEq(HOME.longWay(), HOME.shortWay());
    }

}