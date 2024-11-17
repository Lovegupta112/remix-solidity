// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;


contract PersonContract{

    struct Person{
        string name;
        uint8 age;
        address addr;
    }

    Person public person;
    
    function setPerson(string memory _name,uint8 _age,address _addr) public {
        person.name=_name;
        person.age=_age;
        person.addr=_addr;
    }

    function getPersonValue() public view returns (string memory,uint8,address){
        return (person.name,person.age,person.addr);
    }
}