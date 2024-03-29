// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO Explain the "immutable" modifier

// TODO Add more examples in Concepts contract

contract Shape {

    // ---------------------
    //    State Variables
    // ---------------------

    // All primitive types can be marked "immutable"

    address public immutable owner = address(42);

    bool public immutable rectangle = false;
    
    bytes32 public immutable color;

    uint256 public immutable sides;

    // "bytes" and "string" are dynamic, thus cannot be marked "immutable"

    // bytes immutable colorA = 'aqua';

    // string immutable colorB = 'blue';

    // Arrays are also considered dynamic (non-variable), even if fixed

    // uint256[] immutable lengths;

    // uint256[4] immutable lengthsFour;



    // -----------------
    //    Constructor
    // -----------------

    constructor(uint256 _sides, bytes32 _color) {
        sides = _sides;
        color = _color;

        // Variables marked "immutable" and assigned in-line cannot be assigned again
        // owner = address(43);

        // Variables marked "immutable" cannot be assigned inside an if-else statement
        // if (_sides == 4) { rectangle = true; }
    }



    // ---------------
    //    Functions
    // ---------------

    // State variables marked "immutable" cannot be modified, these functions do not compile

    // function changeShape(uint256 _sides) public {
    //     sides = _sides;
    // }

    // function changeColor(uint256 _color) public {
    //     color = _color;
    // }

}

contract Visibility_4 is Concept {

    Shape Octagon;

    function setUp() public {
        Octagon = new Shape(8, 'Blue');
    }

    // Ase

    function test_Visibility_4A() public {
        assertEq(Octagon.owner(), address(42));
        assert(!Octagon.rectangle());
        assertEq(Octagon.sides(), 8);
        assertEq(Octagon.color(), 'Blue');
    }

}