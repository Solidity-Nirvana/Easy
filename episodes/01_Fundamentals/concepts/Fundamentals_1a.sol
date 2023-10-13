// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO Explain the minimum contract requirements

contract Vanilla {

}

contract Fundamentals_1 is Concept {

    Vanilla VAN;

    function setUp() public {
        VAN = new Vanilla();
    }

    // Log a deployed contract address

    function test_Fundamentals_1A() public {
        emit Log('address(VAN)', address(VAN));
    }

}