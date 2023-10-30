// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

/// @title  State variable "public" modifier implications
/// @notice Showcase the auto-generated view functions for address, uint, int, bool, and fixed-size byte arrays
contract Behind_The_Curtains {

    // ---------------------
    //    State Variables
    // ---------------------

    address visible_1;        /// @notice This is the way

    address nonVisible_1;     /// @notice This is the way

    uint visible_2;        /// @notice This is the way

    uint nonVisible_2;     /// @notice This is the way

    int visible_3;        /// @notice This is the way

    int nonVisible_3;     /// @notice This is the way

    bool visible_4;        /// @notice This is the way

    bool nonVisible_4;     /// @notice This is the way

    bytes4 visible_5;        /// @notice This is the way

    bytes4 nonVisible_5;     /// @notice This is the way



    // ---------------
    //    Functions
    // ---------------

    /// @notice Returns the state variable "visible_1"
    function visible_12() public view {
        return visible_1;
    }
    
}


contract View_3 is Concept {

    Behind_The_Curtains BTC;

    function setUp() public {
        BTC = new Behind_The_Curtains();
    }

    function test_View_3A() public {
        
    }

    function test_View_3B() public { 
        
    }

    function test_View_3C() public { 
        
    }

}

