// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract Vehicle {
    string public make;
    string public model;
    string public fuelType;
    uint256 public year;

    function calculateEfficiency() public pure virtual returns (uint256){

    }

    function distanceTravelled() public pure virtual returns (uint256){

    }

    function maximumSpeed() public pure virtual returns (uint256){

    }
}

contract Truck is Vehicle {
    constructor(){
        make = "BharatBenz";
        model = "6-wheeler";
        fuelType = "Diesel";
        year = 2000;
    }

    function calculateEfficiency() public pure override returns (uint256){
        return 10;
    }

    function distanceTravelled() public pure override returns (uint256){
        return 50000;
    }

    function maximumSpeed() public pure override returns (uint256){
        return 60;
    }
}

contract Car is Vehicle {
    constructor(){
        make = "Tesla";
        model = "Model X";
        fuelType = "Electric";
        year = 2024;
    }

    function calculateEfficiency() public pure override returns (uint256){
        return 350;
    }  

    function distanceTravelled() public pure override returns (uint256) {
        return 20000;
    }

    function maximumSpeed() public pure override returns (uint256) {
        return 150;
    }
}

contract Motorcycle is Vehicle {
    constructor(){
        make = "Royal Enfield";
        model = "Bullet 350";
        fuelType = "Petrol";
        year = 2022;
    }

    function calculateEfficiency() public pure override returns (uint256){
        return 60;
    }

    function distanceTravelled() public pure override returns (uint256){
        return 15000;
    }

    function maximumSpeed() public pure override returns (uint256){
        return 110;
    }

}