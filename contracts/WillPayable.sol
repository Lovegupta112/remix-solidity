// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts/utils/Strings.sol";

contract WillPayable {

    address public ownerAddress;
    address public recipientAddress;
    uint public  totalMoney;
    uint public passedTime;

     constructor(address payable _recipientAddress){
        ownerAddress=msg.sender;
        recipientAddress=_recipientAddress;
     }

     modifier onlyOwner(){
        require(msg.sender==ownerAddress,"You are not owner");
        _;
     }

     function changeRecipientAddress(address payable _recipientAddress) public onlyOwner{
        recipientAddress=_recipientAddress;
     }

     function ping() public onlyOwner returns (string memory) {
       passedTime=block.timestamp;
       return "Admin pinged";
     }

     function depositMoney() public payable onlyOwner{
      totalMoney+=msg.value;
     }

     function withdrawMoney() public  {
       uint passedOneHour=1 hours;
       uint totalTime=block.timestamp-passedTime;
        //require(totalTime>passedOneHour,"1 hour has not been passed.");
       string memory message=string.concat("Time passed : (in sec) ",Strings.toString(totalTime));
       require(totalTime>passedOneHour,message);
       payable(recipientAddress).transfer(totalMoney);
       totalMoney=0;
     }

}