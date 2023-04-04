// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

// NOTE To solve this puzzle, assign each state variable its maximum value in-line

contract TakeItToTheLimit {

    // ---------------------
    //    State Variables
    // ---------------------

    uint96 public take;
    uint128 public it;
    uint180 public to;
    uint232 public the;
    uint public limit;

}

contract Primitive_Types_B is Puzzle {

    TakeItToTheLimit SCAR;

    function setUp() public {
        SCAR = new TakeItToTheLimit();
    }

    function test_P_Primitive_Types_B1() public {
        emit Log("SCAR.take()", SCAR.take());
        assertEq(SCAR.take(), type(uint96).max);
    }

    function test_P_Primitive_Types_B2() public {
        emit Log("SCAR.it()", SCAR.it());
        assertEq(SCAR.it(), type(uint128).max);
    }

    function test_P_Primitive_Types_B3() public {
        emit Log("SCAR.to()", SCAR.to());
        assertEq(SCAR.to(), type(uint180).max);
    }

    function test_P_Primitive_Types_B4() public {
        emit Log("SCAR.the()", SCAR.the());
        assertEq(SCAR.the(), type(uint232).max);
    }

    function test_P_Primitive_Types_B5() public {
        emit Log("SCAR.limit()", SCAR.limit());
        assertEq(SCAR.limit(), type(uint).max);
    }

}