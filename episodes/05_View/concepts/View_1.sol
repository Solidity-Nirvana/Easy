// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO: Heavily revise this contract, add purpose at top as TODO tag

// TODO Remember natspec post episode 4

contract GetSum {

    // -----------------
    //    Constructor
    // -----------------

    constructor() { }



    // ---------------
    //    Functions
    // ---------------

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


contract View_1 is Concept {

    GetSum GSUM;

    function setUp() public {
        GSUM = new GetSum();
    }

    function test_View_1A() public {
        //emit Log(GSUM.getSum1());
    }

    function test_View_1B() public { 
        emit Log('GSUM.getSum2()', GSUM.getSum2());
    }

    function test_View_1C() public { 
        emit Log('GSUM.getSum3()', GSUM.getSum3());
    }

}

