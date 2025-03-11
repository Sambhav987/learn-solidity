// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

import "./d7p1lib.sol";

contract d7p1{
    function checkmax(int256 x, int256 y) public pure returns (int256){
        return d7p1lib.max(x,y);
    }

    function checkmin(int256 x, int256 y) public pure returns (int256){
        return d7p1lib.min(x,y);
    }

    function checkfactorial(uint256 x) public pure returns (uint256){
        return d7p1lib.factorial(x);
    }

    function checkfib(uint256 x) public pure returns (uint256){
        return d7p1lib.fib(x);
    }

    function checkisArmstrong(uint256 x) public pure returns (string memory){
        return d7p1lib.isArmstrong(x);
    }
}