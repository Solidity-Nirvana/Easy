// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

contract ByteMe {

    // ---------------------
    //    State Variables
    // ---------------------

    bytes32 public generic = "generic";
    bytes4 public generic2 = bytes32(100);

    bytes2 public minimal;

    bytes1 public testing;

}

contract Primitive_Types_5 is Scenario {

    ByteMe BYTE;

    function setUp() public {
        BYTE = new ByteMe();
    }

    function test_Primitive_Types_5A() public {
        emit Log("BYTE.generic()", BYTE.generic());
        emit Log("BYTE.minimal()", BYTE.minimal());
        emit Log("BYTE.testing()", BYTE.testing());
    }

}