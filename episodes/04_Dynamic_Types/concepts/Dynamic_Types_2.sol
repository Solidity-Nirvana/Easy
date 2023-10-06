// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO: Explain the difference between state variable arrays (storage) and local variable arrays

contract Rays_Of_Sunshine {

    // ---------------------
    //    State Variables
    // ---------------------

    uint[] public y;

    address[3][] public z;



    // -----------------
    //    Constructor
    // -----------------

    constructor() {
        
    }

    function pushVal(uint val) public {
        y.push(val);
    }

}

contract Dynamic_Types_2 is Concept {

    Rays_Of_Sunshine RAY;
    
    function setUp() public {
        RAY = new Rays_Of_Sunshine();
    }

    // Question - Is there a difference between an array as a local variable vs. state variable?
    // State variable has unlimited/inifite storage size, you can use push()

    function test_Dynamic_Types_2A() public {
        
        // uint[] memory x = new uint[](3);
        uint[] storage x = new uint[](3);

        // x[0] = 1;
        // x[1] = 3;
        // x[2] = 4;

    }

    function test_Dynamic_Types_2B() public {

        for (uint i = 0; i < 1000; i++) {
            RAY.pushVal(i);
        }
        
    }

}