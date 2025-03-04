// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract MinMax{
    uint256 public max;
    uint256 public min;

    function get(uint256 n1, uint256 n2, uint256 n3) public{
        if(n1>n2 && n1>n3){
            max = n1;
        }
        else if(n2>n1 && n2>n3){
            max = n2;
        }
        else{
            max = n3;
        }

        if(n1<n2 && n1<n3){
            min = n1;
        }
        else if(n2<n1 && n2<n3){
            min = n2;
        }
        else{
            min = n3;
        }
    }
}