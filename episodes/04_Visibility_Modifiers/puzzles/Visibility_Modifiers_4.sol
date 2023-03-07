// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.16;

/// @notice Explains the Immutable modifier.

contract Visibility_Modifiers_4 {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 immutable age;

    string constant name = '333';



    // -----------------
    //    Constructor
    // -----------------

    constructor(uint256 _age, string memory _name) {
        age = _age;
    }



    // ---------------
    //    Functions
    // ---------------

    // function setAge(uint256 _age) public {
    //     age = _age;
    // }

}