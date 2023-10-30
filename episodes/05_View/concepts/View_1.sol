// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

/// @title  View functions, stand-alone (or state variables? TODO)
/// @notice Syntax of view functions including visibility modifiers, input parameters, and return statements
contract Show_Me_The_Way {

    // ---------------------
    //    State Variables
    // ---------------------

    address way;     /// @notice This is the way



    // ---------------
    //    Functions
    // ---------------

    /// 
    function getSum1() public view {
        
    }
    
}


contract View_1 is Concept {

    Show_Me_The_Way WAY;

    function setUp() public {
        WAY = new Show_Me_The_Way();
    }

    function test_View_1A() public {
        
    }

    function test_View_1B() public { 
        
    }

    function test_View_1C() public { 
        
    }

}

