// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

/// @title  Input parameters, pure and view modifiers
contract Quality_Control {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 good = 500;     /// @notice The amount of good products produced

    uint256 bad = 30;       /// @notice The amount of bad products produced



    // ---------------
    //    Functions
    // ---------------

    /// @notice Returns the total amount of products produced
    /// @dev The return statement has a math equation
    function totalProduced() public view returns (uint) {
        return good + bad;
    }

    /// @notice Returns the total amount, plus an additional amount provided
    /// @dev This view function has an input parameter
    /// @dev It's not possible to use "pure" as a modifier
    function additionalProduced(uint256 amount) public view returns (uint256) {
        return good + bad + amount;
    }

    /// @notice This is a pure function, that returns 5 times the input amount
    /// @dev This is pure because it does not read any variables from state, only the input(s)
    function amplifiedAmount(uint256 amount) public pure returns (uint256) {
        return amount * 5;
    }

}


contract View_2 is Concept {

    Quality_Control QC;

    function setUp() public {
        QC = new Quality_Control();
    }

    // Log the total produced

    function test_View_2A() public {
        uint total = QC.totalProduced();
        emit Log("total", total);
    }

    // Log the output of additionalProduced() view function

    function test_View_2B() public { 
        uint additional = QC.additionalProduced(500);
        emit Log("additional", additional);
    }

    // Log the output of amplifiedAmount() pure function

    function test_View_2C() public { 
        uint amplified = QC.additionalProduced(500);
        emit Log("amplified", amplified);
    }

}

