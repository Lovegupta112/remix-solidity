// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract Payables{

     uint public totalMoney;

    function deposit() public  payable {
     totalMoney+=msg.value;
    }

    function withdraw(address payable  addr) public{
        payable(addr).transfer(totalMoney);
        totalMoney=0;
    }
}