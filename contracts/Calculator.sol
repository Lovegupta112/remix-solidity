// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract Calculator{
    // uint8 sum=0;
    // uint32 largeNumber=23444444;
    // int negativeNumber=-345;
    // bool isActive=false;
    // address owner=0xC3abbE0E52a0fBAf6cA1C14972a2a2499aA75d86;
    // string name="solidity Contract";

    uint num=0;
    constructor(uint _initialValue){
     num=_initialValue;
    }
   
   function getValue() public view returns (uint)  {
     hello();
    return num;
   }
   function add(uint _value) public {
    num += _value;
   }
   function subtract(uint _value) public {
    num-=_value;
   }
   function muliply(uint _value) public {
    num *=_value;
   }
   function divide(uint _value) public {
    require(_value!=0,"value can't be 0");
    num /=_value;
   }
   function callYourName(string memory _name) public pure returns (string memory){
      return string.concat(hello(),_name);
   }
   function hello () private pure returns (string memory) {
    return "hello world";
   }
}

