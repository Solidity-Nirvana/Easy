// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";
import "utils/actors/Evil.sol";

// TODO Showcase the difference between "private" and "internal" modifiers

contract HidingInPlainSight {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 internal age;

    uint256 private weight;

    // A common pattern is to prepend _ to the beginning of a private variable, such as _weight
    // and then implement a corresponding view function called weight().
    
    /*

        function weight() public view returns (uint) {
            return _weight;
        }

    */



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

contract Visibility_3 is Concept {

    Person Julie;
    Evil Bob;

    function setUp() public {
        Bob = new Evil();
        Julie = new Person(150, 18);
    }

    function test_Visibility_3A() public {
        assert(!Bob.try_viewWeight(address(Julie)));
        assert(!Bob.try_viewAge(address(Julie)));
        assert(Bob.try_exposeAge(address(Julie)));
        assert(Bob.try_exposeWeight(address(Julie)));
    }

}