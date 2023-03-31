// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

/// @notice Explain the basics of a constructor

contract Person {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 public age;

    string public name;



    // -----------------
    //    Constructor
    // -----------------

    constructor(uint256 _age, string _name) {
        age = _age;
        name = _name;
    }

}