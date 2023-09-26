// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/actors/PeepingTom.sol";

import "utils/Scenario.sol";

/// @notice Showcase the difference between "private" and "internal" modifiers

contract HidingInPlainSight {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 internal age;

    uint256 private weight;

    // A common pattern is to prepend _ to the beginning of a private variable, such as _weight



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

    // This contract is unable to access the private "weight" variable
    
    // function exposeWeight() public view returns (uint) {
    //     return weight;
    // }

}

contract Variable_Modifiers_3 is Scenario {

    Person Julie;
    PeepingTom Tom;

    function setUp() public {
        Tom = new PeepingTom();
        Julie = new Person(150, 18);
    }

    function test_Variable_Modifiers_3A() public {
        assert(!Tom.try_viewWeight(address(Julie)));
        assert(!Tom.try_viewAge(address(Julie)));
        assert(Tom.try_exposeAge(address(Julie)));
        assert(Tom.try_exposeWeight(address(Julie)));
    }

}