// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Puzzle.sol";

contract Speakeasy {

    // ---------------------
    //    State Variables
    // ---------------------

    bytes32 public answer = 0x61440a7dcbeba06a0cd437822a676aec5544068e826b97d2594a0be49fc7a112;

    
    
    // -----------------
    //    Constructor
    // -----------------

    constructor() { }

    function enterSpeakeasy(string memory password) public returns(bool) {
        return keccak256(abi.encodePacked(password)) == answer;
    }

    function hashPassword(string memory password) public returns(bytes32) {
        return keccak256(abi.encodePacked(password));
    }

}

// TODO: To solve this puzzle, update the variable "password" in setUp()
// TODO: To retrieve the "password", goto https:// ... (etherscan) link and view the value for variable "password"
contract Etherscan_A is Puzzle {

    Speakeasy Attaboy;

    string password;

    function setUp() public {
        Attaboy = new Speakeasy();
        password = "";
    }

    function test_P_EtherScan_A() public {
        assert(Attaboy.enterSpeakeasy(password));
    }

}