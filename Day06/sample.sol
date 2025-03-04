// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Employee {
    string public name;
    string public addr;
    string public jobTitle;
    uint public salary;
    uint256 rating;


    function calculateBonus() public view virtual returns(uint) {
        return 0;
    }
    
    function genPerformance() public view virtual returns(uint) {
        uint256 performance =0;
        if(rating>2){
            performance=10;
        }
        else if(rating>4){
            performance=20;
        }
        else if(rating>6){
            performance=80;
        }
        else {
            performance =100;
        }

        return performance;
    }

    
    function manageProjects() public pure virtual {}
}

contract Manager is Employee {
    uint256 bonus = 1000;
    
    constructor() {
        addr = "paikpara";
        jobTitle = "Manager";
        salary=20000;
    }

    function calculateBonus() public view override returns (uint) {
        return salary/10;
    }
    
    function genPerformance() public view override returns(uint) {
        return uint160(msg.sender);
    }

    function manageProjects(string memory taskName, string memory projectAddress) 
        public {
        require(bytes(taskName).length > 0, "Task name cannot be empty");
        addr = projectAddress;
    }
}

contract Developer is Employee {
    constructor() {
        jobTitle = "Developer";
        addr = "kolkata";
    }

    function calculateBonus() public view override returns (uint) {
        return uint160(msg.sender);
    }

    function genPerformance(string memory projectAddress, string memory taskName) 
        public {
        require(bytes(taskName).length > 0, "Task name cannot be empty");
        addr = projectAddress;
    }
    
    function manageProjects() public pure override {}
}

contract Programmer is Employee {
    constructor() {
        jobTitle = "Programmer";
        addr ="dumdum";
    }

    function calculateBonus() public view override returns (uint) {
        return uint160(msg.sender);
    }

    function genPerformance(string memory projectAddress, string memory taskName) 
        public {
        require(bytes(taskName).length > 0, "Task name cannot be empty");
        addr = projectAddress;
    }
    
    function manageProjects() public pure override {}
}