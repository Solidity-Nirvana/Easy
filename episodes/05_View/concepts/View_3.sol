// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

/// @title  Full NatSpec for view functions, showcasing @param, @return
contract Calculator {

    // ---------------
    //    Functions
    // ---------------

    /// @notice Returns the sum of two variables
    /// @param a The first input
    /// @param b The second input
    /// @return result The sum of `a` and `b`
    function add(uint256 a, uint256 b) public pure returns (uint result) {
        return a + b;
    }

    /// @notice Returns the multiplication of two variables
    /// @param a The first input
    /// @param b The second input
    /// @return result The multiplication of `a` and `b`
    function mul(uint256 a, uint256 b) public pure returns (uint result) {
        return a * b;
    }

}


contract View_3 is Concept {

    Calculator CALC;

    function setUp() public {
        CALC = new Calculator();
    }

    // Log addition

    function test_View_3A() public {
        uint addition = CALC.add(10, 20);
        emit Log("addition", addition);
    }

    // Log multiplication

    function test_View_3B() public { 
        uint multiplication = CALC.mul(50, 10);
        emit Log("multiplication", multiplication);
    }

}

