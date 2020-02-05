pragma solidity ^0.5.0;


contract datatypes {
    
    uint[] arr = new uint[](7);
    enum choices {one, three,two}
    choices c1;
    
    struct employee{
        uint id;
        string name;
    }
    
    employee e1;
    
    function setEmployee(uint  num, string memory empName) public {
        e1.id = num;
        e1.name = empName;
        
    }
    
    function getEmployee() public view  returns (uint,string memory){
        
        return (e1.id,e1.name);
    }
    
    function getArray() public returns (uint[] memory) {
        arr[1]=12;
    return arr;
    
    }
    
    function getDynamicArray(uint length) public pure returns (uint){
        uint[] memory  dArray = new uint[](length);
        dArray[2]=14;
        return dArray[2];
    }
    
    function getEnums(uint value) public returns (choices){
        
        c1 = choices(value);
        return c1;
    }
    
}
