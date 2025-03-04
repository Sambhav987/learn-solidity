// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract Employee {
    string public name;
    string public addr;
    string public jobTitle;
    uint256 public salary;

    function calculateBonus() public view virtual returns (uint256){
        return salary/8;
    }

    function peformanceReport() public view virtual returns(string memory){
        return ("No report");
    }

    function manageProject() public view virtual returns(string memory) {
        return ("No project");
    }
}

contract Manager is Employee {
    constructor(){
        name = "Sam";
        addr = "123 Main St, Anytown, USA 94067";
        jobTitle = "Manager of Marketing Department";
        salary = 20000;
    }


    function peformanceReport() public view override returns(string memory){
        return (string.concat(name, " has poor performance"));
    }

    function manageProject() public view override returns(string memory) {
        return (string.concat(name, " is managing all projects"));
    }
}

contract Developer is Employee {
    constructor(){
        name = "Sambhav";
        addr = "123 Main St, Anytown, USA 94067";
        jobTitle = "Software Engineer at XYZ Inc.";
        salary = 15000;
    }

    function peformanceReport() public view override returns(string memory) {
        return (string.concat(name, " has great performance"));
    }

    function manageProject() public view override returns(string memory) {
        return (string.concat(name, " is managing DevOps project"));
    }
}

contract Programmer is Employee {
    constructor(){
        name = "Sammy";
        addr = "123 Main St, Anytown, USA 94067";
        jobTitle = "Programmer at ABC Company.";
        salary = 12000;
    }


    function peformanceReport() public view override returns(string memory) {
        return (string.concat(name, " has good performance"));
    }

    function manageProject() public view override returns(string memory) {
        return (string.concat(name, " is managing coding projects"));
    }

}