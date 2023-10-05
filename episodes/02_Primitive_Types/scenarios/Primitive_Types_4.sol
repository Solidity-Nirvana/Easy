// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO Explain the bool type

contract Black_And_White {

    // ---------------------
    //    State Variables
    // ---------------------

    // There are only two possible values for "bool": true and false
    // The default value for a bool is false
    bool public black;

    // You can assign a "true" value to a bool with true
    bool public white = true;
    
}

contract Primitive_Types_4 is Concept {

    Black_And_White BAW;

    function setUp() public {
        BAW = new Black_And_White();
    }

    // Validate initial values of "black" and "white"

    function test_Primitive_Types_4A() public {

        emit Log("BAW.black()", BAW.black());
        emit Log("BAW.white()", BAW.white());

        assert(!BAW.black());
        assert(BAW.white());

    }

    // For this test, we will showcase working with a local bool, "correct"

    function test_Primitive_Types_4B() public {

        // To negate a boolean, use an !
        bool correct;
        assert(!correct);
        emit Log("correct", correct);

        // We can assign the inverse of "correct" by using !
        correct = !correct;
        assert(correct);
        emit Log("correct", correct);

        // We can also use logical operators and assign the output to a bool
        // An example of true output
        correct = 5 > 4;
        assert(correct);
        emit Log("correct", correct);

        // An example of false output
        correct = 5 > 6;
        assert(!correct);
        emit Log("correct", correct);

    }

}