// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

import "utils/Concept.sol";
import "utils/actors/Evil.sol";

/// @title  Internal modifier, functions
contract Vault {

    // ---------------------
    //    State Variables
    // ---------------------

    uint256 public gold;    /// @notice The amount of gold (oz.) in the vault

    bool public lockOne;     /// @notice Whether the vault is locked, lock one

    bool public lockTwo;     /// @notice Whether the vault is locked, lock two

    bool public lockThree;     /// @notice Whether the vault is locked, lock three



    // -----------------
    //    Constructor
    // -----------------

    /// @param _gold Initial amount of gold in the vault
    constructor(uint256 _gold) {
        gold = _gold;
    }




    // ---------------
    //    Functions
    // ---------------

    /// @notice Locks the safe
    function lockSafe() external {
        activateLockOne();
        activateLockTwo();
        activateLockThree();
    }

    /// @notice Unlocks the safe
    function unlockSafe() external {
        deactivateLockOne();
        deactivateLockTwo();
        deactivateLockThree();
    }

    /// @notice Activates the first lock
    function activateLockOne() internal {
        lockOne = true;
    }

    /// @notice Activates the first lock
    function activateLockTwo() internal {
        lockTwo = true;
    }

    /// @notice Activates the first lock
    function activateLockThree() internal {
        lockThree = true;
    }

    /// @notice Deactivates the first lock
    function deactivateLockOne() internal {
        lockOne = false;
    }

    /// @notice Deactivates the first lock
    function deactivateLockTwo() internal {
        lockTwo = false;
    }

    /// @notice Deactivates the first lock
    function deactivateLockThree() internal {
        lockThree = false;
    }

}


contract Functions_1 is Concept {

    Evil Bob;
    Vault SAFE;

    function setUp() public {
        Bob = new Evil();
        SAFE = new Vault(1_000_000);
    }

    // Lock the safe

    function test_Functions_3A() public {
        
        // Before
        emit Log('SAFE.lockOne()', SAFE.lockOne());
        emit Log('SAFE.lockTwo()', SAFE.lockTwo());
        emit Log('SAFE.lockThree()', SAFE.lockThree());

        // Lock the safe
        SAFE.lockSafe();

        // After
        emit Log('SAFE.lockOne()', SAFE.lockOne());
        emit Log('SAFE.lockTwo()', SAFE.lockTwo());
        emit Log('SAFE.lockThree()', SAFE.lockThree());
        
    }

    // Unlock the safe

    function test_Functions_3B() public {
        
        // Before
        emit Log('SAFE.lockOne()', SAFE.lockOne());
        emit Log('SAFE.lockTwo()', SAFE.lockTwo());
        emit Log('SAFE.lockThree()', SAFE.lockThree());

        // Lock the safe
        SAFE.lockSafe();

        // After
        emit Log('SAFE.lockOne()', SAFE.lockOne());
        emit Log('SAFE.lockTwo()', SAFE.lockTwo());
        emit Log('SAFE.lockThree()', SAFE.lockThree());

        // Unlock the safe
        SAFE.unlockSafe();

        // After
        emit Log('SAFE.lockOne()', SAFE.lockOne());
        emit Log('SAFE.lockTwo()', SAFE.lockTwo());
        emit Log('SAFE.lockThree()', SAFE.lockThree());

    }

    // Show failure of calling internal function directly

    function test_Functions_3C() public {

        assert(!Bob.try_deactivateLockOne(address(SAFE)));
        assert(!Bob.try_deactivateLockTwo(address(SAFE)));
        assert(!Bob.try_deactivateLockThree(address(SAFE)));

        // The call will fail (as it does above) when made directly from this test-case
        // SAFE.activateLockOne();

    }

}

