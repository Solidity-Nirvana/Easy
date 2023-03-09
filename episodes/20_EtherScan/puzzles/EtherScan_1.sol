// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.16;

import "utils/Puzzle.sol";
/// @notice Explain the basics of Etherscan by navigating to a pre-deployed contract and pulling down a flag.

contract KeyChecker {

    // -----------------
    //    Constructor
    // -----------------

    bytes public userKey;
    bytes public userWallet;

    constructor() {
        userKey = "f5ef5b513665c91ba8b803422178c47b697bba413535268614abec4215ae93a4";
        userWallet = "0xa874fd79B4464E20F8783CFA83E0BDd116454c04"; 
    }

}


// NOTE: To solve this test, initialize the contract "PMB" such that its state variables "a" == 1 and "b" == 2.
contract Etherscan_1 is Puzzle {

    KeyChecker KCK;

    function setUp() public {
        KCK = new KeyChecker();
    }

    function test_Etherscan_1() public {
        assert(generateKey() == KCK.userKey());
    }

    function generateKey() public returns(bytes32) {
        bytes memory usersWallet = KCK.userWallet();
        return keccak256(usersWallet);
    }

}