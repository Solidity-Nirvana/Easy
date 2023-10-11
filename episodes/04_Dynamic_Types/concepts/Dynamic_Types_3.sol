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

    // Fixed-size array with 3 elements, each element is a dynamic array
    uint[][3] public tres;

    // Fixed-size array with 3 elements, each element is a fixed-size array (length 5), all type uint8
    uint8[5][3] public cuatro = [ [5, 5, 5, 5, 5], [0, 1, 2, 3, 4], [3, 3, 3, 3, 3] ];


    /*

        "uno" - uint[][]
        Can resize itself to include any number of elements
        Each element is a dynamic array, which can resize itself
        
        uno: [ [1, 2, 3], [1], [], [5, 5, 5, 5, 5], ... ]



        "dos" - uint[5][]
        Can resize itself to include any number of elements
        Each element is a fixed-size array of uint's, with length 5

        dos: [ [5, 5, 5, 5, 5], [1, 1, 1, 1, 1], ... ]

        

        "tres" - uint[][3]
        Cannot resize itself, is a fixed-size array of 3 elements
        Each element is a dynamic array, which can resize itself

        tres: [ [1], [2, 2], [3, 3, 3] ]

        

        "cuatro" - uint[5][3]
        Cannot resize itself, is a fixed-size array of 3 elements
        Each element is a fixed-size array of uint's, with length 5

        cuatro: [ [5, 5, 5, 5, 5], [0, 1, 2, 3, 4], [3, 3, 3, 3, 3] ]

    */



    // ---------------
    //    Functions
    // ---------------

    // pushDynamicArray() adds a dynamic uint[] array to the end of a dynamic uint[] array

    function pushDynamicArray(uint[] memory array) public {
        uno.push(array);
    }

    function getUno() public returns (uint[][] memory) {
        return uno;
    }

    function getDos() public returns (uint[5][] memory) {
        return dos;
    }

    function getTres() public returns (uint[][3] memory) {
        return tres;
    }

    function getCuatro() public returns (uint8[5][3] memory) {
        return cuatro;
    }

}

contract Dynamic_Types_3 is Concept {

    Two_Heads_Better_Than_One SNAKE;
    
    function setUp() public {
        SNAKE = new Two_Heads_Better_Than_One();
    }

    // Demonstrate using push() on uint[][]

    function test_Dynamic_Types_3A() public {

        emit Log("SNAKE.getUno()", SNAKE.getUno());
        
        // Initialize array with length 2
        uint[] memory uintArray = new uint[](2);

        uintArray[0] = 100;
        uintArray[1] = 500;

        // Push array once
        SNAKE.pushDynamicArray(uintArray);

        emit Log("SNAKE.getUno()", SNAKE.getUno());

        // Push array again, twice
        SNAKE.pushDynamicArray(uintArray);
        SNAKE.pushDynamicArray(uintArray);

        emit Log("SNAKE.getUno()", SNAKE.getUno());

    }

    function test_Dynamic_Types_3B() public {
        
    }

    function test_Dynamic_Types_3C() public {
        
    }

    // Disclaimer: 2D Arrays are gas expensive, it's important to determine the viability of other approaches

}