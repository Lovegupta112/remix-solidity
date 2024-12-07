// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0 ;

contract StackMem{

    uint[] numArr;

//local var will store in stack 
    function add(uint _a,uint _b) public pure returns (uint) {
        uint res=_a +_b;
        return res;
    }

    function init1(uint[] memory _numArr) public {
// arrays,string etc are stored in memory 
      for(uint i=0;i<_numArr.length;i++){
         numArr[i]=_numArr[i];
      }
    }

}