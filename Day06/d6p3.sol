// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/refs/heads/master/contracts/utils/math/Math.sol";

contract Shape {
    uint256 scale = 10**18;

    function getPerimeter() public view virtual returns (uint256){
    }

    function getArea() public view virtual returns (uint256){
    }
}

contract Cirle is Shape {
    uint256 radius;

    function setInput(uint256 _radius) public {
        radius = _radius;
    }

    function getPerimeter() public view override returns (uint256){
        uint256 perimeter;
        perimeter = 2 * ((314 * scale)/100) * radius;
        return perimeter;
    }

    function getArea() public view override returns (uint256){
        uint256 area;
        area = ((314 * scale)/100) * radius * radius;
        return area;
    }
}

contract Rectangle is Shape {
    uint256 length;
    uint256 breadth;

    function setInput(uint256 _length, uint256 _breadth) public {
        length = _length;
        breadth = _breadth;
    }

    function getPerimeter() public view override returns (uint256){
        return (2*(length + breadth));
    }

    function getArea() public view override returns (uint256){
        return (length * breadth);
    }
}

contract Triangle is Shape {
    uint256 s1;
    uint256 s2;
    uint256 s3;

    function setInput(uint256 _s1, uint256 _s2, uint256 _s3) public {
        s1 = _s1;
        s2 = _s2;
        s3 = _s3;
    }

    function getPerimeter() public view override returns (uint256){
        return (s1 + s2 + s3);
    }

    function getArea() public view override returns (uint256){
        uint256 s = (s1+s2+s3)/2;
        return Math.sqrt((s *(s-s1)*(s - s2)*(s-s3)));
    }
}