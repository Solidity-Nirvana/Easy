// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO: Explain the difference between state variable arrays and local variable arrays

contract Rays_Of_Sunshine {

    // ---------------------
    //    State Variables
    // ---------------------

    // All static types can be defined as an arrary

    uint[] public uintArray;

    uint16[] public uint16Array;

    int[] public intArray;

    // State variables allow assignment of the array

    bool[] public boolArray = [true, true, false];

    address[] public addressArray;

    bytes4[] public bytes4Array;



    // -----------------
    //    Constructor
    // -----------------

    // Notice that an array parameter, due to its dynamic size, must be marked "memory" (just like bytes or string)

    constructor(uint valueOne, uint valueTwo, address[] memory _addressArray) public {

        // Push valueOne, then valueTwo into the uintArray state variable
        uintArray.push(valueOne);
        uintArray.push(valueTwo);

        // Assign the addressArray state variable
        addressArray = _addressArray;

    }

}

contract Dynamic_Types_2 is Concept {

    Rays_Of_Sunshine RAY;
    
    function setUp() public {

        // When deploying a contract that has an array as a constructor() parameter,
        // we first initialize the array as a local variable, then assign desired values

        // Notice here, that we mark an array as "memory" when defining it as a local variable
        // Notice also, that we simultaneously assign it to a defined-length array using "new" keyword
        // The "addresses" variable can not be resized after this

        address[] memory addresses = new address[](3);

        // To assign values to our local variable, we do the following:

        addresses[0] = address(42);
        addresses[1] = address(69);
        addresses[2] = address(420);

        // Then, we pass the "addresses" variable into our contract deployment:

        RAY = new Rays_Of_Sunshine(1, 2, addresses);

    }

    // When accessing a state variable array, provide the index you want to access

    function test_Dynamic_Types_2A() public {

        // Accessing an index
        emit Log("RAY.uintArray(0)", RAY.uintArray(0));
        emit Log("RAY.uintArray(1)", RAY.uintArray(1));

        // Accessing an index out-of-bounds resuls in an error
        emit Log("RAY.uintArray(2)", RAY.uintArray(2));

    }

    // Showcase push() and pop() of array, as well as assigning a given index

    function test_Dynamic_Types_2B() public {
        
    }

    // Showcase arrays as local variables (memory)

    function test_Dynamic_Types_3B() public {

        uint[] memory uintMemory = new uint[](10);  // Initialized uintMemory
        uint[] calldata uintCalldata;  // Renamed to uintCalldata

        // bytes is similar to bytes1[], but due to padding rules, it wastes 31 bytes of space for each element (except in storage). 
        // It is better to use the bytes type instead.

    }

}