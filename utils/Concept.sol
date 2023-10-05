// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

// Test (foundry-rs) imports.
import "lib/forge-std/src/Test.sol";

// Interface imports.
interface Hevm {
    function warp(uint256) external;
    function expectRevert(bytes calldata) external;
}

/// @notice This is the base Puzzle contract for implementing a puzzle.
contract Concept is DSTest, Test {

    event Log(uint);
    event Log(bool);
    event Log(int);
    event Log(string);
    event Log(bytes);
    event Log(bytes32);
    event Log(address);

    event Log(string, uint);
    event Log(string, bool);
    event Log(string, int);
    event Log(string, string);
    event Log(string, bytes);
    event Log(string, bytes32);
    event Log(string, address);

    Hevm hevm;      /// @dev The core import of Hevm from Test.sol to support forge-test.

    constructor() { hevm = Hevm(address(bytes20(uint160(uint256(keccak256("hevm cheat code")))))); }

}