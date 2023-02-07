// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.16;

import "utils/Puzzle.sol";

contract InnyOrOutty {
    
    uint256 public a;

    constructor() {
        // Modify the constructor in such a way that the public variable 'a' has the value of 1.
        uint256 a = 1;

    }
}

contract Constructor_B is Puzzle {

    InnyOrOutty IOO;

    function setUp() public {
        IOO = new InnyOrOutty();

    }

    function test_Constructor_B1() public {
        assertEq(IOO.a(), 1);
    }

}