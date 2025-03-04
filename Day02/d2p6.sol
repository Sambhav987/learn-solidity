// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract Circle {
    function area(int256 r) public pure returns(int256){
        int256 result;
        int256 scale = 10 ** 18;
        result = ((314 * scale) / 100) * r * r;

        return result;
    }
}