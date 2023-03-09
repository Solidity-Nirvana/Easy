// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

/// @notice Explain the basics of Etherscan by navigating to a pre-deployed contract and pulling down a flag.

contract HashBrowns {

    // -----------------
    //    Constructor
    // -----------------

    bytes public userKey;
    bytes public userWallet;

    constructor() {
        
    }

    function encodeSecret(address input) external pure returns(bytes memory output) {
        return abi.encode(input);
    }

    function decodeSecret(bytes memory data) external pure returns(address output) {
        (output) = abi.decode(data, (address));
    }

}

contract Etherscan_B is Puzzle {

    HashBrowns HB;

    function setUp() public {
        HB = new HashBrowns();
    }

    function test_EtherScan_B() public {
        bytes memory hashOutput = HB.encodeSecret(address(42));
        address output = HB.decodeSecret(hashOutput);
        assertEq(output, address(42));
    }

}