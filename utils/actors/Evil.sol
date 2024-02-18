// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;
pragma experimental ABIEncoderV2;

contract Evil {

    // ---------------
    //    Functions
    // ---------------

    function try_deactivateLockOne(address vault) external returns (bool ok) {
        string memory sig = "deactivateLockOne()";
        (ok,) = address(vault).call(abi.encodeWithSignature(sig));
    }

    function try_deactivateLockTwo(address vault) external returns (bool ok) {
        string memory sig = "deactivateLockTwo()";
        (ok,) = address(vault).call(abi.encodeWithSignature(sig));
    }

    function try_deactivateLockThree(address vault) external returns (bool ok) {
        string memory sig = "deactivateLockThree()";
        (ok,) = address(vault).call(abi.encodeWithSignature(sig));
    }



    // ----------------
    //    Visibility
    // ----------------

    function try_viewAge(address loc) external returns (bool ok) {
        string memory sig = "viewThisWeight()";
        (ok,) = address(loc).call(abi.encodeWithSignature(sig));
    }

    function try_viewWeight(address loc) external returns (bool ok) {
        string memory sig = "viewWeight()";
        (ok,) = address(loc).call(abi.encodeWithSignature(sig));
    }

    function try_exposeAge(address loc) external returns (bool ok) {
        string memory sig = "exposeAge()";
        (ok,) = address(loc).call(abi.encodeWithSignature(sig));
    }

    function try_exposeWeight(address loc) external returns (bool ok) {
        string memory sig = "exposeWeight()";
        (ok,) = address(loc).call(abi.encodeWithSignature(sig));
    }

}