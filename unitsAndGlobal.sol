pragma solidity ^0.5.9;


contract unitsAndGlobal{
    
    uint mySec = 1 seconds;
    uint myMin = 1 minutes;
   // uint myYear = 1 years;
    uint myHour = 1 hours;
    
    function getUnits() public view returns (uint,uint,uint,uint,uint){
        //now gives latest blocks time
        return (mySec,myMin,myHour,now,now+myMin);
    }
    
    function getGas() payable  public returns(uint,uint){
        
        return (gasleft(),msg.value);
    }
