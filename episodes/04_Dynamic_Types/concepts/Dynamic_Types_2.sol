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

        // Push valueOne, then valueTwo into the uintArray state variable (pop is supported also)
        uintArray.push(valueOne);
        uintArray.push(valueTwo);

        // Assign the addressArray state variable
        addressArray = _addressArray;

    }



    // ---------------
    //    Functions
    // ---------------

    // Push adds a value to the end of the array

    function pushValue(uint value) public {
        uintArray.push(value);
    }

    // Push removes a value from the end of the array

    function popValue() public {
        uintArray.pop();
    }

    // Returns an array 

    function returnArray() public returns (uint[] memory) {
        return uintArray;
    }

}

contract Dynamic_Types_2 is Concept {

    Rays_Of_Sunshine RAY;

    event Log(uint[]);
    
    function setUp() public {

        // When deploying a contract that has an array as a constructor() parameter,
        // we first initialize the array as a local variable, then assign desired values

        // Notice here, that we mark an array as "memory" when defining it as a local variable
        // Notice also, that we simultaneously assign it to a defined-length array using "new" keyword
        // The "addresses" variable can not be resized after this

        address[] memory addresses = new address[](3);  // Length 3, one line

        bool[] memory booleans;
        booleans = new bool[](5);   // Length 5, two lines

        // To assign values to our local variable, we do the following:

        addresses[0] = address(0x42);
        addresses[1] = address(0x69);
        addresses[2] = address(0x420);

        // Then, we pass the "addresses" variable into our contract deployment:

        RAY = new Rays_Of_Sunshine(1, 2, addresses);

    }

    // When accessing a state variable array, provide the index you want to access

    function test_Dynamic_Types_2A() public {

        // Accessing an index
        emit Log("RAY.uintArray(0)", RAY.uintArray(0));
        emit Log("RAY.uintArray(1)", RAY.uintArray(1));

        emit Log("RAY.boolArray(0)", RAY.boolArray(0));
        emit Log("RAY.boolArray(1)", RAY.boolArray(1));
        emit Log("RAY.boolArray(2)", RAY.boolArray(2));

        emit Log("RAY.addressArray(0)", RAY.addressArray(0));
        emit Log("RAY.addressArray(1)", RAY.addressArray(1));
        emit Log("RAY.addressArray(2)", RAY.addressArray(2));

        // Accessing an index out-of-bounds resuls in an error
        // emit Log("RAY.uintArray(2)", RAY.uintArray(2));

    }

    // Explain the difference between arrays as local variables (memory) and state variables (storage)

    function test_Dynamic_Types_2B() public {

        // Arrays as local variables (memory):
        //  - Only used in functions
        //  - Do not exist after the function call ends
        //  - Their length must be declared via a "new" array initialization
        //  - Their length cannot adjust aftewards, thus does not support push() or pop()

        uint[] memory localArray = new uint[](10);

        // Arrays as state variables (storage):
        //  - Modifications are stored on the blockchain, they persist
        //  - Their length adjusts dynamically based on assigned value and push() or pop() operations
        //  - They do not need to be initialized

        emit Log(RAY.returnArray());

    }

    // Explain the difference between bytes1[] and bytes

    function test_Dynamic_Types_2C() public {

        // bytes is similar to bytes1[], but due to padding rules, it wastes 31 bytes of space for each element (except in storage). 
        // It is better to use the bytes type instead.

    }

}