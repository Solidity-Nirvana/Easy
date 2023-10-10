// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";

// TODO: Explain "bytes" and "string" types, including their similarities and differences

contract Movie {

    // ---------------------
    //    State Variables
    // ---------------------

    // "bytes"
    // - Represents a dynamic array of bytes.
    // - Not assumed to be UTF-8 encoded, or any specific encoding.
    // - Can contain any arbitrary sequence of bytes.

    bytes public title;

    // NOTE: The type bytes1[] is an array of bytes, but due to padding rules, 
    // it wastes 31 bytes of space for each element (except in storage). 
    // It is better to use the bytes type instead.
    bytes1[] public titleArray; 


    // "string"
    // - Represents a dynamic array of UTF-8-encoded characters.
    // - Should be used for human-readable text.
    // - Because it's UTF-8 encoded, multi-byte characters might be present.

    string public description;



    // -----------------
    //    Constructor
    // -----------------

    // When assigning a value to a "bytes" or "string" state variable in the constructor,
    // the parameter must be marked "memory". When a parameter is marked as memory, the data it contains
    // is only stored temporarily during the function call - and not stored on the blockchain for later use.
    // They only exist in memory for that particular transaction, in this case constructor().

    constructor(bytes memory _title, string memory _description) {
        title = _title;
        description = _description;
    }

}

contract Dynamic_Types_1 is Concept {

    Movie JACK;
    
    function setUp() public {

        // The "_title" doesn't use any special UTF-8 characters, only bytes
        // The "_description" includes UTF-8 characters
        // See: https://unicode.org/emoji/charts/full-emoji-list.html
        // See: https://www.fileformat.info/info/charset/UTF-8/list.htm
        JACK = new Movie(
            "Jack the Ripper", 
            unicode"🤨"
        );

        // In order to use unicode characters, add "unicode" keyword to the beginning of the string

    }

    // The "bytes" type has a length property, and you can access an element at a given index.

    function test_Dynamic_Types_1A() public {
        emit Log('JACK.title()', JACK.title());
        emit Log('JACK.title().length', JACK.title().length);

        emit Log('JACK.description()', JACK.description());

        // The following will revert, as string does not have a length property
        // emit Log('JACK.description().length', JACK.description().length);
    }

    function test_Dynamic_Types_2A() public {
        
    }

    function test_Dynamic_Types_3A() public {
        
    }

}