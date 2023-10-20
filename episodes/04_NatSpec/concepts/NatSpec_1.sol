// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

// TODO: Explain NatSpec

/// @title (Describe the contract) This contract showcases basic NatSpec
/// @notice (Explain the contract) This contract focuses on NatSpec for state variables and the constructor()
/// @author (Name of the author) SolidityNirvana
contract NatSpec {

    // ---------------------
    //    State Variables
    // ---------------------

    /// @notice Tracks the number of times a function has been called
    uint256 counter;

    /// The owner of this contract (this line defaults to an @notice tag when not specified)
    address owner;



    // -----------------
    //    Constructor
    // -----------------

    // NatSpec is also recognized with comments using the formatting /** */

    /** 
        @notice The constructor() for the NatSpec contract
        @param _owner Specifies the owner of this contract
    */
    constructor(address _owner) {
        owner = _owner;
    }



    // You can also use NatSpec for events, modifiers, and functions. These will be shown and explained
    // later when these concepts are first discussed in their respective episodes.

}