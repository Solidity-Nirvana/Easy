// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO: Explain "bytes" and "string" types, including their similarities and differences

contract Image {

    // ---------------------
    //    State Variables
    // ---------------------

    // "string" is a type that represents a dynamic array of characters, its length adjusts based on assigned value.
    // It's intended to be used for human-readable text.
    string public description;

    // "bytes" represents a dynamic array of byte values, it length also adjusts based on assigned value.
    // It's ideal for handling raw data (hashes, encoded values, etc.)
    bytes public ipfsHash;



    // -----------------
    //    Constructor
    // -----------------

    // Static (primitive) types have a fixed size known at compile time (uint, bool, address).
    // Dynamic types have a size that is only known at runtime.
    // Thus, when passing a dynamic "bytes" or "string" parameter in the constructor() we include the "memory" keyword.
    // When a parameter is marked as memory, the data it contains is only stored temporarily during the function call.

    constructor(string memory _description, bytes memory _ipfsHash) {
        description = _description;
        ipfsHash = _ipfsHash;
    }

}

contract Dynamic_Types_1 is Concept {

    Image DOG;
    
    function setUp() public {

        DOG = new Image(
            "A playful golden retriever in a park.", 
            bytes("bafybeiek2i4cpwtoac7tluibkfyip2r4njbomyhrtmqukjjnb5r7vg6qsy")  
        );

        // Example IPFS URL, with the above hash:
        // https://ipfs.io/ipfs/bafybeiek2i4cpwtoac7tluibkfyip2r4njbomyhrtmqukjjnb5r7vg6qsy

    }

    // Demonstrate "bytes" length property, and accessing an element at an index

    function test_Dynamic_Types_1A() public {

        emit Log('DOG.ipfsHash()', DOG.ipfsHash());

        // Length property
        emit Log('DOG.ipfsHash().length', DOG.ipfsHash().length);

        // Index property, first element
        emit Log('DOG.ipfsHash()[0]', DOG.ipfsHash()[0]);

    }

    // Showcase "string" lacks these properties

    function test_Dynamic_Types_1B() public {

        emit Log('DOG.description', DOG.description());

        // Lacks length property, reverts
        // emit Log('DOG.description().length', DOG.description().length);

        // Lacks index property, reverts
        // emit Log('DOG.description()[0]', DOG.description()[0]);

    }

    // Experiment with the "experiment" state variable to demonstrate push() and pop()

    bytes public experiment = "ABCDEF";

    function test_Dynamic_Types_1C() public {

        // See: https://web.cecs.pdx.edu/~harry/compilers/ASCIIChart.pdf
        // Compare "hex" (output values in command line) to "ASCII" (input values in this code)

        emit Log('experiment', experiment);

        // Push the character "G" to the end
        experiment.push("G");

        emit Log('experiment', experiment);

        // Remove the last character
        experiment.pop();

        emit Log('experiment', experiment);

        // Remove the last character, three more times consecutively
        experiment.pop();
        experiment.pop();
        experiment.pop();

        emit Log('experiment', experiment);
        
    }

    // Demonstrate the concat() functionality of "string" and "bytes" types

    function test_Dynamic_Types_1D() public {

        // Example concatention, two values

        string memory a = "Grand";
        string memory b = "Canyon";

        string memory ab = string.concat(a, b);

        emit Log('ab', ab);

        // Example concatenation, five values (all values must be type string)

        string memory c = "Fra";
        string memory d = "n";
        string memory e = "ken";
        string memory f = "st";
        string memory g = "ein";

        string memory cdefg = string.concat(c, d, e, f, g);

        emit Log('cdefg', cdefg);

        // Example concatention, bytes (values can be "bytes" or bytes1 - bytes32)

        bytes memory h = "Fra";
        bytes1 i = "n";
        bytes3 j = "ken";
        bytes2 k = "st";
        bytes3 l = "ein";

        bytes memory hijkl = bytes.concat(h, i, j, k, l);

        emit Log('hijkl', hijkl);

    }

}