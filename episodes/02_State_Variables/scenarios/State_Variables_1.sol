// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.16;

// Go over the difference between State and Local Variables

contract State_Variables_1 {

    // ---------------------
    //    State Variables
    // ---------------------

    // State variables have values permanently stored in a contracts stograge.
    uint state_a = 50;
    uint state_b;



    // -----------------
    //    Constructor
    // -----------------

    constructor(){
        // Regardless of where state variables are set, their values can be accessed.
        state_b = 100;

    }



    // ---------------
    //    Functions
    // ---------------

    // Local variables have values that are only temporarily stored in a contracts storage.
    // We cannot get the sum of two numbers by calling a local variable unless it has been passed out of a function.
    function getSum_local_1() public view {
        uint local_a = 1;
        uint local_b = 2;

        uint local_result_1 = local_a + local_b;
    }

    // By using the term "return" we are able to pass back values from a function even if it is a local variable.
    function getSum_local_2() public view returns (uint){
        uint local_c = 3;
        uint local_d = 4;
        uint local_result_2 = local_c + local_d;

        return local_result_2;
    }

    // Although the values are set outside of this function and there are no "returns" for the state variables,
    // we are still able to see their values and return thier sum.
    function getSum_state_1() public view returns (uint){
        uint local_result_0 = state_a + state_b;
        return local_result_0;
    }

    // Unlike local variables, if a state variable's value is changed in a different function, it will effect its value,
    // in the next function is is used in.
    function getSum_state_2() public view returns (uint){
        // Although these are the same variables used in getSum_state_1(), change_state_var() has been called before running 
        // and has changed the value of "state_a".
        uint local_result_0 = state_a + state_b;
        return local_result_0;
    }

    function change_state_var() public {
        state_a = 100;
    }

}