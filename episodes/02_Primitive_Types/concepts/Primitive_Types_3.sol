// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO Explain the address type

contract Home {

    // ---------------------
    //    State Variables
    // ---------------------

    // The default value of an address is 0x0000000000000000000000000000000000000000, or simply address(0)
    // You can view the contents of the null address on EtherScan:
    // https://etherscan.io/address/0x0000000000000000000000000000000000000000

    address public nowhere;


    // Values can be assigned to address types in a few different ways:

    address public longWay  = 0x000000000000000000000000000000000000042A;   // Address literal, checksummed

    address public shortWay = address(0x42A);                               // Typecast

    // Fetch the address of the current contract using address(this)
    // The variable "this" refers to the current contract, and in this case we're fetching the adress with typecasting

    address public heart = address(this);


    // In Solidity, there are primarily two types of addresses: 
    //  - Externally Owned Accounts (EOA)
    //  - Contract Addresses (CA)

    // These two types of addresses serve different purposes.

    // Externally Owned Accounts have a public key (their address) and a private key.
    // These addresses are controlled by individuals that have the private key to authenticate transactions.
    // For example, when using MetaMask you generate a private key and a public key.

    // Contract Addresses have only a public key (their address), they do not have a private key.
    // These addresses are controlled by the code within them (other addresses can interact with the code).
    // For example, this contract.
    

}

contract Primitive_Types_3 is Concept {

    Home HOME;

    function setUp() public {
        HOME = new Home();
    }

    // Validate the null address

    function test_Primitive_Types_3A() public {
        emit Log("HOME.nowhere()", HOME.nowhere());
        assertEq(HOME.nowhere(), address(0));
        assertEq(HOME.nowhere(), 0x0000000000000000000000000000000000000000);
    }

    // Validate that "longWay" and "shortWay" have the same value

    function test_Primitive_Types_3B() public {
        emit Log("HOME.longWay()",  HOME.longWay());
        emit Log("HOME.shortWay()", HOME.shortWay());
        assertEq(HOME.longWay(),    HOME.shortWay());
    }

    // Validate that address(HOME) and HOME.heart() have the same value
    // Notice that in order to fetch the address of a contract state variable, we typecast it with address()

    function test_Primitive_Types_3C() public {
        emit Log("address(HOME)",   address(HOME));
        emit Log("HOME.heart()",    HOME.heart());
        assertEq(address(HOME),     HOME.heart());
    }

}