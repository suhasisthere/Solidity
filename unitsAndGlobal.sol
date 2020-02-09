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
    
    function getSignature() public pure returns (bytes4){
        return msg.sig;
    }
    
    function getBlockNumber() public view returns (uint){
        return block.number;
    }
    function getDifficulty() public view returns (uint){
        //return block.difficulty;
        return block.gaslimit;
    }
    //returns the address of the miner who mined the last block
    function getCoinbase() public view returns (address){
        return block.coinbase;
    }
    function getTxprice() public view returns (uint){
        return tx.gasprice;
    }
    //to get the hash of the value
   function getHash(bytes memory _val) public pure returns (bytes32){
      return sha256(_val);
   }
   function getBalance(address _add) public view returns (uint){
       return _add.balance;
   }
   function sendEther(address payable _to_address) payable public  returns(bool){
       _to_address.transfer(msg.value);
       return true;
   }
}
