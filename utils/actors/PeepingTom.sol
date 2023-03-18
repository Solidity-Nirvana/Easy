// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;
pragma experimental ABIEncoderV2;

contract PeepingTom {

    /*********************/
    /*** TRY FUNCTIONS ***/
    /*********************/

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