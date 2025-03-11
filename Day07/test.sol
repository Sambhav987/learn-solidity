// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

import "./Math.sol";

contract checkLibrary{
    function calcSquare(uint256 x) public pure returns (uint256) {
        return Math.square(x);
    }
}