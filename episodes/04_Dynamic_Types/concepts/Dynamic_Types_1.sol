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

    // "bytes" represents a dynamic array of byte values, it can adjust based on the data assigned.
    // It's ideal for handling raw data (hashes, encoded values, etc.)
    bytes public ipfsHash;



    // -----------------
    //    Constructor
    // -----------------

    // When assigning a value to a "bytes" or "string" state variable in the constructor,
    // the parameter must be marked "memory". When a parameter is marked as memory, the data it contains
    // is only stored temporarily during the function call - and not stored on the blockchain for later use.

    // Static (primitive) types have a fixed size known at compile time (uint, bool, address).
    // Dynamic types have a size that is only known at runtime.
    // Thus, when passing a dynamic "bytes" or "string" parameter in the constructor() we include the "memory" keyword.

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

    // Local variable to demonstrate push() and pop()

    bytes public experiment = "Frankenstei";

    function test_Dynamic_Types_1C() public {

        emit Log('experiment', experiment);

        // Push the character "n" to the end
        experiment.push("n");

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

}