// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

/// @notice Explains the "immutable" modifier.

contract Shape {

    // ---------------------
    //    State Variables
    // ---------------------

    // NOTE: All primitive types can be marked "immutable".

    address public immutable owner = address(42);

    bool public immutable rectangle = false;
    
    bytes32 public immutable color;

    uint256 public immutable sides;

    // NOTE: "bytes" and "string" are dynamic, thus cannot be marked "immutable".

    // bytes immutable colorA = 'aqua';

    // string immutable colorB = 'blue';

    // NOTE: Arrays are also considered dynamic (non-variable), even if fixed.

    // uint256[] immutable lengths;

    // uint256[4] immutable lengthsFour;



    // -----------------
    //    Constructor
    // -----------------

    constructor(uint256 _sides, bytes32 _color) {
        sides = _sides;
        color = _color;

        // NOTE: Variables marked "immutable" and assigned in-line cannot be assigned again.
        // owner = address(43);

        // NOTE: Variables marked "immutable" cannot be assigned inside an if-else statement.
        // if (_sides == 4) { rectangle = true; }
    }



    // ---------------
    //    Functions
    // ---------------

    // NOTE: State variables marked "immutable" cannot be modified, these functions do not compile.

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
        assertEq(Octagon.owner(), address(42));
        assert(!Octagon.rectangle());
        assertEq(Octagon.sides(), 8);
        assertEq(Octagon.color(), 'Blue');
    }

}