// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

// TODO: Explain the minimum contract requirements.

contract Vanilla {

}

contract Contract_Fundamental_1 is Scenario {

    Vanilla VAN;


    function setUp() public {
        // Initialize a new Vanilla contract called VAN
        VAN = new Vanilla();
    }

    function test_Contract_Fundamentals_1A() public {
        emit Log(address(VAN));
    }

}