// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;


contract NameRegistry{

    mapping (address=>string) public  names;
    uint[3] arr;

    constructor(){
    }

    function getAddress() public view returns (address) {
        return msg.sender;
    }

    function setName(string memory _name)public {
     names[msg.sender]=_name;
    }

    function getName(address _address) public view returns (string memory ) {
      return names[_address];
    }

    function setArr(uint _value,uint _index) public{
        require(_index<4);
        arr[_index]=_value;
       
    }
    function getArr(uint _index) public view returns (uint){
    require(_index<4);
     return arr[_index];
    }
}