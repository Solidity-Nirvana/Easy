// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

/// @title  View functions, state variables and mathematics
/// @notice This contract demonstrates generic view functions for state variables, and mathematical operations
contract Show_Me_The_Way {

    // ---------------------
    //    State Variables
    // ---------------------

    /// @notice This state variable DOES NOT have a public visibility modifier
    address hidden = address(100);

    /// @notice This state variable DOES, example value for address
    address public visible = address(200);

    /// @notice Example value for unsigned integer
    uint public count = 42;

    /// @notice Example value for boolean
    bool public activated = true;



    // ---------------
    //    Functions
    // ---------------

    /// @notice Generic view endpoint for hidden value
    function viewHidden() public view returns (address) {
        return hidden;
    }

    /// @notice Generic view endpoint for addition, output is a + b
    /// @param  a The first input
    /// @param  b The second input
    /// @return sum The return value for equation: a + b
    function add(uint a, uint b) public view returns (uint sum) {
        return a + b;
    }

    /// @notice Generic view endpoint for multiplication, out is a * b
    /// @param  a The first input
    /// @param  b The second input
    /// @return mul The return value for equation: a * b
    function multiply(uint a, uint b) public view returns (uint mul) {
        mul = a * b;
    }
    
}


contract View_1 is Concept {

    Show_Me_The_Way WAY;

    function setUp() public {
        WAY = new Show_Me_The_Way();
    }

    /// @notice Tests the visibility modifier, default getter function
    function test_View_1A() public {
        
        // emit Log('WAY.hidden()', WAY.hidden());

        emit Log('WAY.visible()', WAY.visible());
        emit Log('WAY.viewHidden()', WAY.viewHidden());

    }

    /// @notice Tests the calculateSum function
    function test_View_1B() public {
        
    }

    /// @notice Tests the getStatusAndAddress function
    function test_View_1C() public {
        emit Log('WAY.multiply(5, 10)', WAY.multiply(5, 10));
    }

    function test_View_1D() public {
        emit Log('WAY.multiply2(5, 10)', WAY.multiply2(5, 10));
    }

}