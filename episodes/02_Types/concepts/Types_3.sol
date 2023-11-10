// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO Explain the address type

contract Home {

    // ---------------------
    //    State Variables
    // ---------------------

    // Default value

    address public nowhere;


    // Assigned value, literal (check-sum) or typecast

    address public longWay  = 0x000000000000000000000000000000000000042A;

    address public shortWay = address(0x42A);


    // Context value, address(this)

    address public heart = address(this);

}

contract Types_3 is Concept {

    Home HOME;
    Home HOME_2;
    Home HOME_3;

    function setUp() public {
        HOME = new Home();
        HOME_2 = new Home();
        HOME_3 = new Home();
    }

    // Default value (null address)

    function test_Types_3A() public {
        emit Log("HOME.nowhere()", HOME.nowhere());
        assertEq(HOME.nowhere(), address(0));
        assertEq(HOME.nowhere(), 0x0000000000000000000000000000000000000000);

        // See: https://etherscan.io/address/0x0000000000000000000000000000000000000000
    }

    // Assigned value

    function test_Types_3B() public {
        emit Log("HOME.longWay()",  HOME.longWay());
        emit Log("HOME.shortWay()", HOME.shortWay());
        assertEq(HOME.longWay(),    HOME.shortWay());
    }

    // address(this)

    function test_Types_3C() public {
        emit Log("address(HOME)",   address(HOME));
        emit Log("HOME.heart()",    HOME.heart());
        assertEq(address(HOME),     HOME.heart());

        emit Log("address(HOME_2)",   address(HOME_2));
        emit Log("HOME_2.heart()",    HOME_2.heart());
        assertEq(address(HOME_2),     HOME_2.heart());

        emit Log("address(HOME_3)",   address(HOME_3));
        emit Log("HOME_3.heart()",    HOME_3.heart());
        assertEq(address(HOME_3),     HOME_3.heart());
    }

}