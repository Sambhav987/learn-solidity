// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract UserInput{
    string public userinput="Hi";
    uint256 public data;

    //function to take input
    function setinput(string memory input, uint256 d )public{
        userinput=input;
        data = d;
    }

    //fucntibn to retrieve stored input
    function getinput() public view returns(string memory){
        return userinput;
    }

    function get() public view returns (uint256){
        return data;
    }
}