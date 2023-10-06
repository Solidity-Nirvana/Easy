// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

// TODO Explain the minimum contract requirements

contract Vanilla {

}

contract Fundamentals_1 is Scenario {

    Vanilla VAN;

    function setUp() public {
        VAN = new Vanilla();
    }

    // Demonstrate the address of the deployed contract (simulated, explain what the simulation entails)

    function test_Fundamentals_1A() public {
        emit Log('address(VAN)', address(VAN));
    }

}