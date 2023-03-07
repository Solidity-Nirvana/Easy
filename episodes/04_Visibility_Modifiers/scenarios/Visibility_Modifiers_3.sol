// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.16;

import "utils/actors/PeepingTom.sol";
import "utils/Scenario.sol";

/// @notice Showcase the difference between "private" and "internal" modifiers.

contract HidingInPlainSight {

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

contract Julie is HidingInPlainSight {

    // -----------------
    //    Constructor
    // -----------------

    constructor(uint256 _weight, uint256 _age) HidingInPlainSight(_weight, _age) { }



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

contract Visibility_Modifiers_3 is Scenario {

    HidingInPlainSight HIPS;
    PeepingTom tom;

    function setUp() public {
        tom = new PeepingTom();
        HIPS = new HidingInPlainSight(150, 18);
    }

    function test_accessInternal() public {
        // assert(tom.try_viewWeight(address(HIPS)));
    }

}