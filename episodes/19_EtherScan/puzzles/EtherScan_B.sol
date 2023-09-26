// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

// TODO: Heavily revise this puzzle

/// @notice Explain the basics of Etherscan by navigating to a pre-deployed contract and pulling down a flag

contract HashBrowns {

    // -----------------
    //    Constructor
    // -----------------

    constructor() { }



    // ---------------
    //    Functions
    // ---------------

    function encodeSecret(address input) external pure returns(bytes memory output) {
        return abi.encode(input);
    }

    function encodeSecret2(address input, uint256 a, uint256 b) external pure returns(bytes memory output) {
        return abi.encode(input, a, b);
    }

    function decodeSecret(bytes memory data) external pure returns(address output) {
        (output) = abi.decode(data, (address));
    }

    function decodeSecret2(bytes memory data) external pure returns(address output, uint256 a, uint256 b) {
        (output, a, b) = abi.decode(data, (address, uint256, uint256));
    }

}

// TODO: To solve this puzzle, update the value "input" with the correct value
// TODO: To fetch the correct value, go to https:// ... and use encodeSecret(), providing the right input parameter
contract Etherscan_B is Puzzle {

    HashBrowns HB;

    address secret = 0xB99DEdbDe082B8Be86f06449f2fC7b9FED044E15;

    bytes input;

    function setUp() public {
        HB = new HashBrowns();
        input = '';

        emit Log(HB.encodeSecret(0xB99DEdbDe082B8Be86f06449f2fC7b9FED044E15));
        emit Log(HB.decodeSecret(input));
    }

    function test_P_EtherScan_B() public {
        // assertEq(HB.encodeSecret(secret), HB.encodeSecret(secret));
    }

}