// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

contract Globals {

    // ---------------------
    //    State Variables
    // ---------------------

    /*
        SOURCE: https://docs.soliditylang.org/en/v0.8.11/cheatsheet.html#global-variables
        abi.decode(bytes memory encodedData, (...)) returns (...): ABI-decodes the provided data. The types are given in parentheses as second argument. Example: (uint a, uint[2] memory b, bytes memory c) = abi.decode(data, (uint, uint[2], bytes))
        abi.encode(...) returns (bytes memory): ABI-encodes the given arguments
        abi.encodePacked(...) returns (bytes memory): Performs packed encoding of the given arguments. Note that this encoding can be ambiguous!
        abi.encodeWithSelector(bytes4 selector, ...) returns (bytes memory): ABI-encodes the given arguments starting from the second and prepends the given four-byte selector
        abi.encodeCall(function functionPointer, (...)) returns (bytes memory): ABI-encodes a call to functionPointer with the arguments found in the tuple. Performs a full type-check, ensuring the types match the function signature. Result equals abi.encodeWithSelector(functionPointer.selector, (...))
        abi.encodeWithSignature(string memory signature, ...) returns (bytes memory): Equivalent to abi.encodeWithSelector(bytes4(keccak256(bytes(signature)), ...)
        bytes.concat(...) returns (bytes memory): Concatenates variable number of arguments to one byte array
        block.basefee (uint): current block’s base fee (EIP-3198 and EIP-1559)
        block.chainid (uint): current chain id
        block.coinbase (address payable): current block miner’s address
        block.difficulty (uint): current block difficulty
        block.gaslimit (uint): current block gaslimit
        block.number (uint): current block number
        block.timestamp (uint): current block timestamp
        gasleft() returns (uint256): remaining gas
        msg.data (bytes): complete calldata
        msg.sender (address): sender of the message (current call)
        msg.value (uint): number of wei sent with the message
        tx.gasprice (uint): gas price of the transaction
        tx.origin (address): sender of the transaction (full call chain)
        assert(bool condition): abort execution and revert state changes if condition is false (use for internal error)
        require(bool condition): abort execution and revert state changes if condition is false (use for malformed input or error in external component)
        require(bool condition, string memory message): abort execution and revert state changes if condition is false (use for malformed input or error in external component). Also provide error message.
        revert(): abort execution and revert state changes
        revert(string memory message): abort execution and revert state changes providing an explanatory string
        blockhash(uint blockNumber) returns (bytes32): hash of the given block - only works for 256 most recent blocks
        keccak256(bytes memory) returns (bytes32): compute the Keccak-256 hash of the input
        sha256(bytes memory) returns (bytes32): compute the SHA-256 hash of the input
        ripemd160(bytes memory) returns (bytes20): compute the RIPEMD-160 hash of the input
        ecrecover(bytes32 hash, uint8 v, bytes32 r, bytes32 s) returns (address): recover address associated with the public key from elliptic curve signature, return zero on error
        addmod(uint x, uint y, uint k) returns (uint): compute (x + y) % k where the addition is performed with arbitrary precision and does not wrap around at 2**256. Assert that k != 0 starting from version 0.5.0.
        mulmod(uint x, uint y, uint k) returns (uint): compute (x * y) % k where the multiplication is performed with arbitrary precision and does not wrap around at 2**256. Assert that k != 0 starting from version 0.5.0.
        this (current contract’s type): the current contract, explicitly convertible to address or address payable
        super: the contract one level higher in the inheritance hierarchy
        selfdestruct(address payable recipient): destroy the current contract, sending its funds to the given address
        <address>.balance (uint256): balance of the Address in Wei
        <address>.code (bytes memory): code at the Address (can be empty)
        <address>.codehash (bytes32): the codehash of the Address
        <address payable>.send(uint256 amount) returns (bool): send given amount of Wei to Address, returns false on failure
        <address payable>.transfer(uint256 amount): send given amount of Wei to Address, throws on failure
        type(C).name (string): the name of the contract
        type(C).creationCode (bytes memory): creation bytecode of the given contract, see Type Information.
        type(C).runtimeCode (bytes memory): runtime bytecode of the given contract, see Type Information.
        type(I).interfaceId (bytes4): value containing the EIP-165 interface identifier of the given interface, see Type Information.
        type(T).min (T): the minimum value representable by the integer type T, see Type Information.
        type(T).max (T): the maximum value representable by the integer type T, see Type Information.
    */


    // -----------------
    //    Constructor
    // -----------------

    constructor() {

    }


}