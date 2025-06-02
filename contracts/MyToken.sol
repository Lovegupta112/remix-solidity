// SPDX-License-Identifier: MIT
pragma solidity  >=0.8.2 <0.9.0;


contract MyToken{
    address public owner;
    mapping (address=>uint) public balances;
    uint public totalSupply=0;

    constructor(){
        owner=msg.sender;
    }

    function mint(uint amount ) public {
     require(owner==msg.sender,"Not authorized");
     balances[msg.sender]+=amount;
     totalSupply+=amount;
    }

    function mintTo(address _address,uint amount) public {
      require(owner==msg.sender,"Not authorized");
      balances[_address]+=amount;
      totalSupply+=amount;
    }
   
   function transfer(address _address,uint amount) public {
      uint totalAmt=balances[msg.sender];
      require(amount<=totalAmt);
      totalAmt=totalAmt-amount;
      balances[msg.sender]=totalAmt;
      balances[_address]+=amount;
    //   payable(_address).transfer(amount);
   }
}