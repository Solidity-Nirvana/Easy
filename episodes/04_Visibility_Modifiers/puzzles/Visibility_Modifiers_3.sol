/ SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.16;

// TODO: Explain the difference between the "internal" and "private" modifiers.

// NOTE: Create an episode related to Inheritance!

contract Hiding {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 internal weight;

    uint256 private age;



    // -----------------
    //    Constructor
    // -----------------

    constructor(uint256 _weight, uint256 _age) {
        weight = _weight;
        age = _age;
    }



    // ---------------
    //    Functions
    // ---------------

    // function exposeAge() public view returns (uint) {
    //     return age;
    // }

}

contract Visibility_Modifiers_3 is Hiding {

    // -----------------
    //    Constructor
    // -----------------

    constructor(uint256 _weight, uint256 _age) Hiding(_weight, _age) { }



    // ---------------
    //    Functions
    // ---------------

    function exposeWeight() public view returns (uint) {
        return weight;
    }

    // function exposeAge() public view returns (uint) {
    //     return age;
    // }

}