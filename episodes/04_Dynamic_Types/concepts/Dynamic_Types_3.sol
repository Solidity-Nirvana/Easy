// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO: Explain double arrays including properties, initialization, and operations

contract Two_Heads_Better_Than_One {

    // ---------------------
    //    State Variables
    // ---------------------

    // Dynamic array of dynamic arrays
    uint[][] public uno;

    // Dynamic array of fixed-size arrays (length 5)
    uint[5][] public dos;

    // Fixed-size array (length 3) of dynamic arrays
    uint[][3] public tres;

    // Fixed-size array (length 3) of fixed-size arrays (length 5), all type uint8
    uint8[5][3] public cuatro = [ [5, 5, 5, 5, 5], [0, 1, 2, 3, 4], [3, 3, 3, 3, 3] ];


    /*


        "uno" - uint[][]
        can resize itself to include any number of dynamic arrays
        these dynamic arrays can resize themselves
        
        uno: [ [1, 2, 3], [1], [], [5, 5, 5, 5, 5], ... ]



        "dos" - uint[5][]
        is limited to five dynamic arrays
        these dynamic arrays can resize themselves

        dos: [ [5, 5, 5], [], [], [], [1, 1, 1, 1] ]

        

        "tres" - uint[][3]
        can resize itself to include any number of fixed-size arrays (of length 3)

        tres: [ [1, 1, 1], [2, 2, 2], [0, 0, 0], ... ]

        

        "cuatro" - uint[5][3]
        is limited to five fixed-sized arrays (of length 3)

        cuatro: [ [5, 5, 5, 5, 5], [0, 1, 2, 3, 4], [3, 3, 3, 3, 3] ]


    */


    // -----------------
    //    Constructor
    // -----------------

    constructor(uint[][] memory _uno) {
        uno = _uno;
    }



    // ---------------
    //    Functions
    // ---------------

    // pushDynamicArray() adds a dynamic uint[] array to the end of a dynamic uint[] array

    function pushDynamicArray(uint[] memory array) public {
        uno.push(array);
    }

}

contract Dynamic_Types_3 is Concept {

    Two_Heads_Better_Than_One HEADS;
    
    function setUp() public {

        uint[][] memory z = new uint[][](5);

        HEADS = new Two_Heads_Better_Than_One(z);
    }

    function test_Dynamic_Types_3A() public {
    
    }

    function test_Dynamic_Types_3B() public {
        
    }

    function test_Dynamic_Types_3C() public {
        
    }

    // Disclaimer: 2D Arrays are gas expensive, it's important to determine the viability of other approaches

}