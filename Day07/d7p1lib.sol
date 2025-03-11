// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

library d7p1lib{
    function max(int256 x, int256 y) public pure returns (int256){
        if(x > y)
            return x;
        else
            return y;
    }

    function min(int256 x, int256 y) public pure returns (int256){
        if(x < y)
            return x;
        else
            return y;
    }

    function factorial(uint256 x) public pure returns (uint256){
        uint256 result = 1;
        if(x == 0) {
          return 1;
        }
        for(uint256 i = 1; i <=x; i++){
          result *= i;
        }
        return result;
    }

    function fib(uint256 x) public pure returns (uint256){
        if(x==1 || x == 0)
            return x;
        else
            return fib(x-1) + fib(x - 2);
    }

    function isArmstrong(uint256 x) public pure returns (string memory){
        uint256 sum = 0;
        uint256 digit;
        while(x>0){
            digit = x % 10;
            sum = sum + (digit**3);
        }
        if(sum == x)
            return "It's an armstrong number";
        else
            return "Not Armstrong Number";
    }
}