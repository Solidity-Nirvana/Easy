// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

// TODO: Explain NatSpec

/**
    @title (Describe the contract) This contract showcases basic NatSpec
    @notice (Explain the contract) This contract focuses on NatSpec for state variables and the constructor()
    @author (Name of the author) SolidityNirvana

    The above NatSpec is not required, although more information is always useful
*/
contract NatSpec {

    // ---------------------
    //    State Variables
    // ---------------------

    /// @notice Tracks the number of times a function has been called.
    uint256 counter;

    /// The owner of this contract.
    address owner;



    // -----------------
    //    Constructor
    // -----------------

    /// @notice The constructor() for the NatSpec contract.
    /// @param _owner Specifies the owner of this contract.
    constructor(address _owner) {
        owner = _owner;
    }

}