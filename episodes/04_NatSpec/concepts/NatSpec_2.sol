// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

/// @title  State variable NatSpec demonstration
/// @notice Showcases both explicit and implicit NatSpec for state variables, and all options available
contract Variable_NatSpec {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 rabbits;    /// @notice Tracks the number of rabbits
    
    uint256 carrots;    /// Tracks the number of carrots (defaults to an @notice tag when not specified)

    // TODO Write other tags (what's available?)

}