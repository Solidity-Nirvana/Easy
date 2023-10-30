// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO Explain the fixed-size bytes array type

contract Byte_Me {

    // ---------------------
    //    State Variables
    // ---------------------
    
    // Smallest byte array
    bytes1 public smallest;

    // Largest byte array 
    bytes32 public largest;

    // Example lengths
    bytes1 public oneByte = 'a';
    bytes2 public twoBytes = 'ab';
    bytes3 public threeBytes = 'abc';
    bytes8 public eightBytes = 'abcdefg';
    bytes16 public sixteenBytes = 'abcdefghijklmnop';

    bytes26 public alphabet = 'abcdefghijklmnopqrstuvwxyz';

    bytes32 public enchilada = 'abcdefghijklmnopqrstuvwxyz012345';

    // Error, assigned value larger than type
    bytes1 public tooBig = 'a';

    // Error, bytes32 is largest type
    // bytes33 public overloaded = 'abcdefghijklmnopqrstuvwxyz0123456';

    // "bytes" (without a number) is dynamic (see episode Arrays)

}

contract Types_5 is Concept {

    Byte_Me BYTE;

    function setUp() public {
        BYTE = new Byte_Me();
    }

    // Default values, assigned values

    function test_Types_5A() public {
        emit Log("BYTE.smallest()",     BYTE.smallest());
        emit Log("BYTE.largest()",      BYTE.largest());
        emit Log("BYTE.oneByte()",      BYTE.oneByte());
        emit Log("BYTE.twoBytes()",     BYTE.twoBytes());
        emit Log("BYTE.threeBytes()",   BYTE.threeBytes());
        emit Log("BYTE.eightBytes()",   BYTE.eightBytes());
        emit Log("BYTE.sixteenBytes()", BYTE.sixteenBytes());
        emit Log("BYTE.alphabet()",     BYTE.alphabet());
        emit Log("BYTE.enchilada()",    BYTE.enchilada());
    }

    // Output is hex
    // See: https://www.commfront.com/pages/ascii-chart

    function test_Types_5B() public {
        emit Log("BYTE.threeBytes()[0]", BYTE.threeBytes()[0]);
        emit Log("BYTE.threeBytes()[1]", BYTE.threeBytes()[1]);
        emit Log("BYTE.threeBytes()[2]", BYTE.threeBytes()[2]);
    }

}