// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Scenario.sol";

// TODO Explain the fixed-size bytes array type

contract ByteMe {

    // ---------------------
    //    State Variables
    // ---------------------
    
    // Fixed-size byte arrays are initialized with a # between 1 and 32 following the word bytes
    // NOTE The type "bytes" (without a number) is not fixed-size, but rather dynamic (covered in another episode)

    bytes1 public smallest;
    bytes32 public largest;

    bytes1 public oneByte = 'a';
    bytes2 public twoBytes = 'ab';
    bytes3 public threeBytes = 'abc';
    bytes8 public eightBytes = 'abcdefg';
    bytes16 public sixteenBytes = 'abcdefghijklmnop';

    bytes26 public alphabet = 'abcdefghijklmnopqrstuvwxyz';

    bytes32 public enchilada = 'abcdefghijklmnopqrstuvwxyz012345';

    // Attempting to assign a value with more N characters than bytesN will result in an error:
    // bytes1 public tooBig = 'ab';

    // Attempting to assign a fixed-size beyond 32 is not supported:
    // bytes33 public overloaded = 'abcdefghijklmnopqrstuvwxyz0123456';

    // TODO Consider hexadecimal literals (as a type) to assign a value to bytes4 ... converts from hex to bytes

    // Assigning numbers or hexadecimals is not supported:
    // bytes4 public oneHex = 0x45;
    // bytes4 public oneHex = 8;

}

contract Primitive_Types_5 is Scenario {

    ByteMe BYTE;

    function setUp() public {
        BYTE = new ByteMe();
    }

    function test_Primitive_Types_5A() public {
        emit Log("BYTE.smallest()", BYTE.smallest());
        emit Log("BYTE.largest()", BYTE.largest());
        emit Log("BYTE.oneByte()", BYTE.oneByte());
        emit Log("BYTE.twoBytes()", BYTE.twoBytes());
        emit Log("BYTE.threeBytes()", BYTE.threeBytes());
        emit Log("BYTE.eightBytes()", BYTE.eightBytes());
        emit Log("BYTE.sixteenBytes()", BYTE.sixteenBytes());
        emit Log("BYTE.alphabet()", BYTE.alphabet());
        emit Log("BYTE.enchilada()", BYTE.enchilada());
    }

}