// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

// TODO Explain the bool type

contract BlackAndWhite {

    // ---------------------
    //    State Variables
    // ---------------------

    // There are only two possible values for "bool": true and false
    // The default value for a bool is false
    bool public black;

    // You can assign a "true" value to a bool with true
    bool public white = true;
    
}

contract Primitive_Types_4 is Scenario {

    BlackAndWhite BAW;

    function setUp() public {
        BAW = new BlackAndWhite();
    }

    function test_Primitive_Types_4A() public {
        emit Log("BAW.black()", BAW.black());
        emit Log("BAW.white()", BAW.white());

        // Instead of using assertEq() we use assert() for bool values
        // In order to negate a bool value (take the opposite) we use the ! sign
        assert(!BAW.black());
        assert(BAW.white());
    }

    function test_Primitive_Types_4B() public {
        // For this test, we will showcase working with a local bool, "correct"
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