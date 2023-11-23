// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

/// @title  Constructor NatSpec demonstration
/// @notice Demonstrates multi-line NatSpec, a common compiler error, and the param tag for constructor()
contract Constructor_NatSpec {

    // ---------------------
    //    State Variables
    // ---------------------

    address owner;      /// @notice The owner of this contract



    // -----------------
    //    Constructor
    // -----------------

    /** 
        @notice constructor() for the Constructor_NatSpec contract
        @param _owner Specifies the owner of this contract (this must match parameter name)
    */
    constructor(address _owner) {
        owner = _owner;
    }

}