// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

import "./d7p2lib.sol";

contract checkLibrary{
    function calcadd(int256 x, int256 y) public pure returns (int256){
        return d7p2lib.add(x,y);
    }

    function calcsubtract(int256 x, int256 y) public pure returns (int256){
        return d7p2lib.subtract(x, y);
    }

    function calcmultiply(int256 x, int256 y) public pure returns (int256){
        return d7p2lib.multiply(x,y);
    }

    function calcdivide(int256 x, int256 y) public pure returns (int256){
        return d7p2lib.divide(x,y);
    }

    function calcmod(int256 x, int256 y) public pure returns (int256){
        return d7p2lib.mod(x,y);
    }

    function calcsqrt(int256 x) public pure returns (int256){
        return d7p2lib.sqrt(x);
    }

    function abs(int256 x) public pure returns (int256){
        return d7p2lib.abs(x);
    }

    function expo(uint256 x, uint256 y) public pure returns (uint256){
        return d7p2lib.expo(x,y);
    }
}