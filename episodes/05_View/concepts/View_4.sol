// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

/// @title  Scoping for local and state variables
/// @notice ...
contract Tree {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 public apples = 100;




    // ---------------
    //    Functions
    // ---------------

    /// @notice Returns the amount of apples, globally
    function scopingExampleGlobal() public view returns (uint) {
        return apples;
    }

    /// @notice Returns the amount of apples, locally
    /// @dev A view function can't change state, however it can create temporary local variables
    function scopingExampleLocal() public view returns (uint) {
        uint256 apples = 50;
        return apples;
    }
    
}


contract View_4 is Concept {

    Tree TREE;

    function setUp() public {
        TREE = new Tree();
    }

    // Log the global apples

    function test_View_4A() public {

        uint256 applesGlobal = TREE.scopingExampleGlobal();
        emit Log("applesGlobal", applesGlobal);

        uint256 applesState = TREE.apples();
        emit Log("applesState", applesState);

    }

    // Log the local apples

    function test_View_4B() public { 

        uint256 applesLocal = TREE.scopingExampleLocal();
        emit Log("applesLocal", applesLocal);

        uint256 applesState = TREE.apples();
        emit Log("applesState", applesState);

    }

}

