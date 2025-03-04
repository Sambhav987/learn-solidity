// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract Grade {
    function calcGrade(int256 marks) public pure returns(string memory grade) {

        if(marks>=90){
            return "O";
        }
        else if(marks>=80 && marks<90){
            return "E";
        }
        else if(marks>=70 && marks<80){
            return "A";
        }
        else if(marks>=60 && marks<70){
            return "B";
        }
        else if(marks>=50 && marks<60){
            return "C";
        }
        else if(marks>=40 && marks<50){
            return "D";
        }
        else if(marks>0 && marks<40){
            return "F";
        }
        else{
            return "Invalid input";
        }
    }
}