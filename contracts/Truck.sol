// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

import './Vehicle.sol';

contract Truck is Vehicle{

    uint8 numOfWheels;

    constructor(string memory _brandName,uint8 _wheels) Vehicle(_brandName) {
        numOfWheels=_wheels;
    }

    function description() public view  override returns (string memory) {
        return string.concat("This is",brand);
    }
}