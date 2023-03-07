// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.16;

import "utils/Scenario.sol";

/// @notice Explains the "immutable" modifier.

contract Shape {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 public immutable sides;

    bytes32 public immutable color;

    // NOTE: The "immutable" modifier does not work with string.

    // -----------------
    //    Constructor
    // -----------------

    constructor(uint256 _sides, bytes32 _color) {
        sides = _sides;
        color = _color;
    }



    // ---------------
    //    Functions
    // ---------------

    // function changeShape(uint256 _sides) public {
    //     sides = _sides;
    // }

    // function changeColor(uint256 _color) public {
    //     color = _color;
    // }

}

contract Visibility_Modifiers_4 is Scenario {

    Shape Octagon;

    function setUp() public {
        Octagon = new Shape(8, 'Blue');
    }

    function test_Visibility_Modifiers_4A() public {
        assertEq(Octagon.sides(), 8);
        assertEq(Octagon.color(), 'Blue');
    }

}