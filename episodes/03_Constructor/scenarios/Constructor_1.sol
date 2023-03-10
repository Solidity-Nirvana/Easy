// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.16;

/// @notice Explain the basics of a constructor.

// TODO: Create more scenarios related to inheritance!

contract Constructor_1 {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 age;

    bytes32 name;



    // -----------------
    //    Constructor
    // -----------------

    constructor(uint256 _age, bytes32 _name) {
        age = _age;
        name = _name;
    }

}