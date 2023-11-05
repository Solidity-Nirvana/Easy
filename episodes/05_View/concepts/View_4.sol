// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

/// @title  Scoping for local and state variables
/// @notice ...
contract Scope {

    // ---------------------
    //    State Variables
    // ---------------------

    address soInclined;



    // ---------------
    //    Functions
    // ---------------

    function scopingError() public view {
        // soInclined = address(50);
    }
    
}


contract View_4 is Concept {

    Scope OUT;

    function setUp() public {
        OUT = new Scope();
    }

    function test_View_4A() public {
        
    }

    function test_View_4B() public { 
        
    }

    function test_View_4C() public { 
        
    }

}

