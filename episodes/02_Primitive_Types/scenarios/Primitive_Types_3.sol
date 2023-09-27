// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

// TODO Explain the address type

contract Home {

    // ---------------------
    //    State Variables
    // ---------------------

    // The default value of an address is 0x0000000000000000000000000000000000000000
    // The default value of an address is address(0)
    address public home;

    // Values can be assigned in two different forms:
    address public longWay  = 0x0000000000000000000000000000000000042A;     // Plain form
    address public shortWay = address(0x42A);                               // Typecasting form

    // address type's can be assigned with address(this)
    address public something = address(this);

    // address values have the following 3 properties:

    // address.balance, representing the amount of ether (ETH) owned by this address
    
    // address.code, representing the code of the deployed contract (rarely used))

    // address.codehash, representing a hash of the code of the deployed contract (rarely used)

}

contract Primitive_Types_3 is Scenario {

    Home HOME;

    function setUp() public {
        HOME = new Home();
    }

    // Validate the null address

    function test_Primitive_Types_3A() public {
        emit Log("HOME.home()", HOME.home());
        assertEq(HOME.home(), address(0));
        assertEq(HOME.home(), 0x0000000000000000000000000000000000000000);
    }

    // Validate that "longWay" and "shortWay" have the same value

    function test_Primitive_Types_3B() public {
        emit Log("HOME.longWay()",  HOME.longWay());
        emit Log("HOME.shortWay()", HOME.shortWay());
        assertEq(HOME.longWay(),    HOME.shortWay());
    }

    // Validate that address(HOME) and HOME.something() have the same value
    // Notice that in order to fetch the address of a contract state variable, we typecast it with address()

    function test_Primitive_Types_3C() public {
        emit Log("address(HOME)",   address(HOME));
        emit Log("HOME.something()", HOME.something());
        assertEq(address(HOME),      HOME.something());
    }

    // All contracts inheriting Scenario / Puzzles receive large amount of Ether
    // For more in-depth information, see the EVM Fundamentals (#15) & Payable Modifier (#16) episodes

    function test_Primitive_Types_3D() public {
        emit Log("address(this).balance", address(this).balance);
    }

    // For more in-depth information, see the EVM Fundamentals (#15) & Payable Modifier (#16) episodes
    // Use .code to get the EVM bytecode as a bytes memory, which might be empty. 
    // Use .codehash to get the keccak-256 hash of that code (as a bytes32).

    function test_Primitive_Types_3E() public {
        emit Log("address(HOME).code", address(HOME).code);
        emit Log("address(HOME).codehash", address(HOME).codehash);
    }

}