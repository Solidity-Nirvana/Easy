// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.16;

import "utils/Puzzle.sol";

contract LowestCommonDenominator {

    constructor() {

    }

    function handleUint1() public returns (bool) {
        uint8 a = 0;
        a++;
        return true;
    }

    function handleUint2() public returns (bool) {
        uint256 a = 0;
        a++;
        return true;
    }

}

contract State_Variables_A is Puzzle {
    
    LowestCommonDenominator LCD;

    function setUp() public {
        LCD = new LowestCommonDenominator();
    }

    // GasLeft Check, Lowest Variable Possible
    function test_State_Variables_A1() public {
        emit Log(gasleft());
        LCD.handleUint1();
        emit Log(gasleft());
        LCD.handleUint2();
        emit Log(gasleft());
    }

    /*
        [9449] State_Variables_A::test_State_Variables_A1()
            ├─ emit Log(: 9223372036854754603)
            ├─ [277] LowestCommonDenominator::handleUint1()
            │   └─ ← true
            ├─ emit Log(: 9223372036854748239)
            ├─ [304] LowestCommonDenominator::handleUint2()
            │   └─ ← true
            ├─ emit Log(: 9223372036854746351)
            └─ ← ()
    */

    /*
        [9430] State_Variables_A::test_State_Variables_A1()
            ├─ emit Log(: 9223372036854754603)
            ├─ [277] LowestCommonDenominator::handleUint1()
            │   └─ ← true
            ├─ emit Log(: 9223372036854748239)
            ├─ [285] LowestCommonDenominator::handleUint2()
            │   └─ ← true
            ├─ emit Log(: 9223372036854746370)
            └─ ← ()
    */

}