// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";
import "utils/actors/Evil.sol";

/// @title  Return parameters, functions
contract Concert {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 public entrants;    /// @notice The amount of people that entered the stadium



    // ---------------
    //    Functions
    // ---------------

    /// @notice Increase the number of entrants to the stadium by one, returns current amount
    /// @return currentEntrants The current amount of entrants, after being increased
    function increment() external returns (uint currentEntrants) {
        entrants += 1;
        currentEntrants = entrants;
    }

    /// @notice Increase the number of entrants to the stadium by amount, returns current amount
    /// @param amount The amount to increase current entrants by
    /// @return prior The amount of entrants before the increase
    /// @return post The amount of entrants after the increase
    function incrementMultiple(uint amount) external returns (uint prior, uint post) {
        prior = entrants;
        entrants += amount;
        post = entrants;
    }

}


contract Functions_1 is Concept {

    Concert MAYA;

    function setUp() public {
        MAYA = new Concert();
    }

    // Increase amount of entrants by 1, log return value

    function test_Functions_4A() public {

        uint256 currentEntrants = MAYA.increment();

        emit Log("currentEntrants", currentEntrants);
        emit Log("MAYA.entrants()", MAYA.entrants());
        
    }

    // Increase amount of entrants by 100, log return value

    function test_Functions_4B() public {

        (uint256 prior, uint256 post) = MAYA.incrementMultiple(100);

        emit Log("prior", prior);
        emit Log("post", post);
        emit Log("MAYA.entrants()", MAYA.entrants());

    }

}

