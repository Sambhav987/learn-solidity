// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract swap {

    int256 a=0;
    int256 b=0;
    function input(int256 x, int256 y) public {
        a = x;
        b = y;
    }
    function swapUsingThird() public{
        int256 c;
        c = a;
        a = b;
        b = c;
    }

    function swapNoThird() public {
        a = a+b;
        b = a-b;
        a = a-b;
    }

    function getA() public view returns (int256){
        return a;
    } 

    function getB() public view returns (int256){
        return b;
    } 
}