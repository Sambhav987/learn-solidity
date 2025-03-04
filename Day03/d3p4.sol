// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract Roots{

    function checkRoot(uint256 a, uint256 b, uint256 c) public pure returns(string memory){
        if(((b*b) - (4*a*c)) < 0)
            return "Imaginary roots";
        else
            return "Real roots";
    }
}