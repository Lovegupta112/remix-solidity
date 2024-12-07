// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;


contract Modifiers {

    address public ownerAddress;

    constructor(){
        ownerAddress=msg.sender;
    }
    
    // function addAddress(address _address) public  {
    //     require(msg.sender==ownerAddress,"You are not the owner!");
    //     ownerAddress=_address;
    // }

    // function welcome(string memory _name) public  view returns (string memory) {
    //     require(msg.sender==ownerAddress,"You have not permission to call this!");
    //     return string.concat("Welcome to our world ",_name);
    // }
    
    // or we can make modifier----

    modifier  onlyOwner(){
        require(msg.sender==ownerAddress,"You are not the owner,You haven't access.");
        _; //it is like next() in express 
    }

    function addAddress(address _address) public onlyOwner {
        ownerAddress=_address;
    }

    function welcome(string memory _name) public view onlyOwner returns (string memory)  {
        return string.concat("hi , Welcome to our world ",_name);
    }

}