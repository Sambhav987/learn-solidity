// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract Triangle{

    function isTriangle(uint256 n1, uint256 n2, uint256 n3) public pure returns (string memory){
        bool isValid = false;
        uint256 scale = 10**18;
        uint256 area;

        if(n1 >= n2+n3 || n2 >= n1+n3 || n3 >= n1+n2){
            isValid = false;
            return "Is not a triangle";
        }
        else{
            isValid = true;

        }

        if(isValid == true){
            if(n1==n2 && n2==n3){
                area = ((3*scale/4)**(5*(10**17))) * n1 * n1;
                return "Is an equilateral triangle";

            }
            else if(n1==n2 || n2==n3 || n1==n3){
                return "Is an isosceles triangle";
            }

            else if(n1*n1+n2*n2==n3*n3 || n2*n2+n3*n3==n1*n1 || n1*n1+n3*n3==n2*n2){
                return "Is a right-angled triangle";
            }
            else{
                return "Is a scalene triangle";
            }
        }
    }
}