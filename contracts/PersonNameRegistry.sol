// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;


contract PersonNameRegistry{

struct Person{
    string name;
    uint8 age;
    address addr;
}

mapping (address=>Person) public person;

  function setPersonInfo(string memory _name,uint8 _age,address _addr) public {
    // person.name=_name;
    // person.age=_age;
   person[msg.sender]=  Person({name:_name,age:_age,addr:_addr});
     
  }

   function getPersonInfo(address _addr) public view returns (string memory ,uint8,address){
    return (person[_addr].name,person[_addr].age,person[_addr].addr);
   }

}