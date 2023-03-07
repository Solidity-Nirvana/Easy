// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.16;

import "utils/actors/PeepingTom.sol";
import "utils/Scenario.sol";

/// @notice Showcase the difference between "private" and "internal" modifiers.

contract HidingInPlainSight {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 internal age;

    uint256 private weight;



    // -----------------
    //    Constructor
    // -----------------

    constructor(uint256 _age, uint256 _weight) {
        age = _age;
        weight = _weight;
    }



    // ---------------
    //    Functions
    // ---------------

    function exposeWeight() public view returns (uint) {
        return weight;
    }

}

contract Person is HidingInPlainSight {

    // -----------------
    //    Constructor
    // -----------------

    constructor(uint256 _weight, uint256 _age) HidingInPlainSight(_weight, _age) { }



    // ---------------
    //    Functions
    // ---------------

    function exposeAge() public view returns (uint) {
        return age;
    }

    // NOTE: This contract is unable to access the private "weight" variable.
    // function exposeWeight() public view returns (uint) {
    //     return weight;
    // }

}

contract Visibility_Modifiers_3 is Scenario {

    Person julie;
    PeepingTom tom;

    function setUp() public {
        tom = new PeepingTom();
        julie = new Person(150, 18);
    }

    function test_Visibility_Modifiers_3A() public {
        assert(!tom.try_viewWeight(address(julie)));
        assert(!tom.try_viewAge(address(julie)));
        assert(tom.try_exposeAge(address(julie)));
    }

}