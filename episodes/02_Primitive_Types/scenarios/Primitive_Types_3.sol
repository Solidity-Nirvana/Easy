// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

contract Home {

    // ---------------------
    //    State Variables
    // ---------------------

    // The default value of an address is 0x0000000000000000000000000000000000000000
    // The default value of an address is address(0)
    address public home;

    // Values can be assigned in two different forms, use typecasting
    address public longWay = address(0x0000000000000000000000000000000000042A);
    address public shortWay = address(0x42A);

    // address values have the following members:
    // address.balance
    // address.code
    // address.codehash

    // address type's can be assigned with address(this), in future episode we discuss msg.sender
    address public something = address(this);

}

contract Primitive_Types_3 is Scenario {

    Home HOME;

    function setUp() public {
        HOME = new Home();
    }

    function test_Primitive_Types_3A() public {
        emit Log("HOME.home()", HOME.home());
        assertEq(HOME.home(), address(0));
        assertEq(HOME.home(), 0x0000000000000000000000000000000000000000);
    }

    function test_Primitive_Types_3B() public {
        emit Log("HOME.longWay()",  HOME.longWay());
        emit Log("HOME.shortWay()", HOME.shortWay());
        assertEq(HOME.longWay(),    HOME.shortWay());
    }

    function test_Primitive_Types_3C() public {
        // All contracts inheriting Scenario / Puzzles receive large amount of Ether
        // For more in-depth information, see EVM Fundamentals & Payable Modifier episodes
        emit Log("address(this).balance", address(this).balance);
    }

    function test_Primitive_Types_3D() public {
        // For more in-depth information, see EVM Fundamentals & Payable Modifier episodes
        // Use .code to get the EVM bytecode as a bytes memory, which might be empty. 
        // Use .codehash to get the Keccak-256 hash of that code (as a bytes32).
        emit Log("address(HOME).code", address(HOME).code);
        emit Log("address(HOME).codehash", address(HOME).codehash);
    }

    function test_Primitive_Types_3E() public {
        emit Log("address(HOME)",   address(HOME));
        emit Log("HOME.something()", HOME.something());
        assertEq(address(HOME),      HOME.something());
    }

}