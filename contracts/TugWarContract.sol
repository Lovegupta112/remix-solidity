// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract TugWarContract{
     int8 public ropePosition;
     uint8 public team1Score;
     uint8 public team2Score;
     uint8 public maxScoreDifference=5;
     address public owner;
     

     constructor (address _owner){
      owner=_owner;
     }

      function reSet(uint8 _maxScoreDifference) public {
       require(msg.sender!=owner,"only owner");
       maxScoreDifference=_maxScoreDifference;
       ropePosition=0;
       team1Score=0;
       team2Score=0;
      }


     function pull (bool isTeam1) public  {
       
        if(team1Score>team2Score){
            require(team1Score-team2Score<maxScoreDifference,"Game Over");
        }
        else{
            require(team2Score-team1Score<maxScoreDifference,"Game Over");
        }
       if(isTeam1){
          ropePosition--;
           team1Score++;
       }
       else{
        ropePosition++;
        team2Score++;
       }
     }

     function getWinStatus() public view returns (uint8){

        if(team1Score>=team2Score+maxScoreDifference) return 1;
        if(team2Score>=team1Score+maxScoreDifference) return 2;
        return 0;
     }





}