// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

// cci - cross contract invocation
interface ICalculator {
    function add(uint) external ;
    function getValue() external  view returns (uint);
}

contract InterfaceCalculator{

     address public contractAddress;

    constructor(address _contractAddress){
       contractAddress=_contractAddress;
    }

    function proxyAdd(uint _num) public{
       ICalculator(contractAddress).add(_num);
    }

    function proxyGetValue() public view returns (uint) {
     uint value= ICalculator(contractAddress).getValue();
     return value;
    }
}