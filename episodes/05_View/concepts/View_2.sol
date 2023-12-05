// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

/// @title  Pure functions
/// @notice ...
contract Quality_Control {

    // ---------------
    //    Functions
    // ---------------

    // TODO Showcase multiple parameter outputs, and tuple handling

    // We cannot get the sum of two numbers by calling a local variable unless it has been passed out of a function
    function getSum1() public view {
        uint local_a = 1;
        uint local_b = 2;
        uint local_result_1 = local_a + local_b;
    }

    // By using the term "return" we are able to pass back values from a function even if it is a local variable
    function getSum2() public view returns (uint) {
        uint local_c = 3;
        uint local_d = 4;
        uint local_result_2 = local_c + local_d;

        return local_result_2;
    }

    // We can also name the return parameter, and assign it in the function
    function getSum3() public view returns (uint result) {
        uint local_c = 3;
        uint local_d = 4;
        result = local_c + local_d;
    }
}


contract View_2 is Concept {

    Quality_Control QC;

    function setUp() public {
        QC = new Quality_Control();
    }

    function test_View_2A() public {
        
    }

    function test_View_2B() public { 
        
    }

    function test_View_2C() public { 
        
    }

}

