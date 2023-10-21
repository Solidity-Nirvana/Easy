// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO Explain the bool type

contract Black_And_White {

    // ---------------------
    //    State Variables
    // ---------------------

    // Default value
    bool public black;

    // Assigned value
    bool public white = true;
    
}

contract Types_4 is Concept {

    Black_And_White BAW;

    function setUp() public {
        BAW = new Black_And_White();
    }

    // Default value, assigned value

    function test_Types_4A() public {

        emit Log("BAW.black()", BAW.black());
        emit Log("BAW.white()", BAW.white());

        assert(!BAW.black());
        assert(BAW.white());

    }

    // Local boolean, operations

    function test_Types_4B() public {

        // Default value
        bool correct;
        assert(!correct);
        emit Log("correct", correct);

        // Negation (or inverse), true to false
        correct = !correct;
        assert(correct);
        emit Log("correct", correct);

        // Logical operator assignment, true
        correct = 5 > 4;
        assert(correct);
        emit Log("correct", correct);

        // Logical operator assignment, false
        correct = 5 > 6;
        assert(!correct);
        emit Log("correct", correct);

    }

}