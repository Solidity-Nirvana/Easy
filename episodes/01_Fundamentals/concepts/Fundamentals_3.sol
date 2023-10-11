// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.17;

// TODO Explain the different methodologies for enforcing acceptable version(s) of the solidity compiler with pragma

// This formatting specifies a single version
// pragma solidity 0.8.17;

// This formatting specifies multiple versions above the specified version, but will not include 0.9.0 or higher
// pragma solidity ^0.8.17;

// This formatting specifies a range of versions between 0.7.0 or greater and 0.8.17 or less
// pragma solidity >=0.7.0 <=0.8.17;

// Contract will not compile without the pragma defined

// It is highly recommend to use the latest compiler version, as older compiler versions may have bugs or other issues 
// that were fixed in later versions

// You can view changelog information here: https://soliditylang.org/blog/category/releases/

contract Vanilla {

}