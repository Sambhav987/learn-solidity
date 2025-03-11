// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

library d7p2lib{
    function add(int256 x, int256 y) public pure returns (int256){
        return x+y;
    }

    function subtract(int256 x, int256 y) public pure returns (int256){
        return x-y;
    }

    function multiply(int256 x, int256 y) public pure returns (int256){
        return x*y;
    }

    function divide(int256 x, int256 y) public pure returns (int256){
        return x/y;
    }

    function mod(int256 x, int256 y) public pure returns (int256){
        return x%y;
    }

    function sqrt(int256 x) public pure returns (int256){
        return x**1;
    }

    function abs(int256 x) public pure returns (int256){
        if(x<0)
            return (-x);
        return x;
    }

    function expo(uint256 x, uint256 y) public pure returns (uint256){
        return x**y;
    }
}