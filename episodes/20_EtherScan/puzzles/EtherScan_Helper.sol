// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.16;

/// @notice This contract will be deployed for all students to interact with in the EtherScan puzzles.

contract Etherscan_Helper {

    // -----------------
    //    Constructor
    // -----------------



    constructor() {
        
    }


    function generateKey(bytes memory usersWallet) public pure returns(bytes32) {
        return keccak256(usersWallet);
    }

}