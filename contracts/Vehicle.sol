// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;


contract Vehicle{

    string brand;

    constructor(string memory _brandName){
        brand=_brandName;
    }

    function description() public  virtual returns (string memory){
      return  brand;
    }
}

