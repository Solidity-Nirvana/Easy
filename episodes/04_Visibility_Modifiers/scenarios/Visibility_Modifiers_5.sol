// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.16;

/// @notice Explains the Immutable modifier.

contract Visibility_Modifiers_5 {

    // ---------------------
    //    State Variables
    // ---------------------

    // Immutable vs. Constant - Difference ?

    uint256 constant BIPS = 10000;

    string constant name = '333';



    // -----------------
    //    Constructor
    // -----------------

    constructor(string memory _name) {
        // name = _name;
    }



    // ---------------
    //    Functions
    // ---------------

    // function setAge(uint256 _age) public {
    //     age = _age;
    // }

}