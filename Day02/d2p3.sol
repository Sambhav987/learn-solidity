// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract TemperatureConverter {

    int256 public scale = 10**18;
    int256 public celsius;
    int256 public fahrenheit;

    function setTemperature(int256 c) public {
        celsius = c;
        fahrenheit = (((celsius * scale * 9) / 5) + (32 * scale));
    }

    function getFahrenheit() public view returns (int256) {
        return fahrenheit;
    }
}