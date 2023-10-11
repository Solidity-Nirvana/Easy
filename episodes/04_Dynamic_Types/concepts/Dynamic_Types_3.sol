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

    // pushDynamicArray() adds a dynamic uint[] array to the end of a dynamic array of arrays

    function pushDynamicArray(uint[] memory array) public {
        uno.push(array);
    }

    // pushFixedArray() adds a fixed-size uint[5] array to the end of a dynamic array of arrays

    function pushFixedArray(uint[5] memory array) public {
        dos.push(array);
    }

    // assignDynamicArray() assigns a dynamic uint[] array value to the specified element of a fixed-size array

    function assignDynamicArray(uint[] memory array, uint index) public {
        tres[index] = array;
    }

    // assignFixedArray() assigns a fixed-size uint8[5] array to the specified element of a fixed-size array

    function assignFixedArray(uint8[5] memory array, uint index) public {
       cuatro[index] = array;
    }


    // View functions for the state variables

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

    // Define some extra Log events for console output
    event Log(string, uint[][]);
    event Log(string, uint[5][]);
    event Log(string, uint[][3]);
    event Log(string, uint8[5][3]);
    
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

    // Demonstrate using push() on uint[5][]

    function test_Dynamic_Types_3B() public {
        
        emit Log("SNAKE.getDos()", SNAKE.getDos());

        // Initialize fixed-size array
        uint[5] memory uintArray;

        uintArray[0] = 5;
        uintArray[1] = 6;
        uintArray[2] = 7;
        uintArray[3] = 8;
        uintArray[4] = 9;

        SNAKE.pushFixedArray(uintArray);
        
        emit Log("SNAKE.getDos()", SNAKE.getDos());

    }

    // Demonstrate assignment on uint[][3]

    function test_Dynamic_Types_3C() public {

        emit Log("SNAKE.getTres()", SNAKE.getTres());

        // Initialize array with length 2
        uint[] memory uintArray = new uint[](2);

        uintArray[0] = 100;
        uintArray[1] = 500;

        // Assign this array to element 2 of our fixed-size array, "tres"
        SNAKE.assignDynamicArray(uintArray, 2);

        emit Log("SNAKE.getTres()", SNAKE.getTres());
        
    }

    // Demonstrate assignment on uint[5][3]

    function test_Dynamic_Types_3D() public {

        emit Log("SNAKE.getCuatro()", SNAKE.getCuatro());

        // Initialize fixed-size array
        uint8[5] memory uintArray;

        uintArray[0] = 5;
        uintArray[1] = 6;
        uintArray[2] = 7;
        uintArray[3] = 8;
        uintArray[4] = 9;

        // Assign this array to element 1 of our fixed-size array, "cuatro"
        SNAKE.assignFixedArray(uintArray, 1);

        emit Log("SNAKE.getCuatro()", SNAKE.getCuatro());

    }

    // Disclaimer: 2D Arrays are gas expensive, it's important to determine the viability of other approaches

}