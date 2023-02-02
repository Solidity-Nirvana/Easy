// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.16;

// Test (foundry-rs) imports.
import "lib/forge-std/src/Test.sol";

/// @notice This is the base Puzzle contract for implementing a puzzle.
contract Puzzle is DSTest, Test {

    Hevm hevm;      /// @dev The core import of Hevm from Test.sol to support forge-test.

    constructor() { hevm = Hevm(address(bytes20(uint160(uint256(keccak256("hevm cheat code")))))); }

}