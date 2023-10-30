// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

/// @title  NatSpec for constructor()
/// @notice Shows multi-line NatSpec, a common compiler error, and the param tag for constructor()
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
        @param _owner Specifies the owner of this contract
    */
    constructor(address _owner) {
        owner = _owner;
    }

}