// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

/// @title  NatSpec for state variables
/// @notice Shows in-line NatSpec, explicit and implicit decleration, and tags available for state variables
contract Variable_NatSpec {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 rabbits;    /// @notice Tracks the number of rabbits
    
    uint256 carrots;    /// Tracks the number of carrots (defaults to an @notice tag when not specified)

}