// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract ExternalModifier is Ownable{

 constructor()Ownable(msg.sender){

 }

 function welcome(string memory _name) public view onlyOwner returns (string memory)  {
        return string.concat("hi , Welcome to our world ",_name);
    }

}