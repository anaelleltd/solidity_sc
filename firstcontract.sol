pragma solidity ^0.4.0;

contract myfirstcontract {
    string private name;
    uint private age;
    
    function setName(string newName){
        name = newName;
    }
    
    function getName() constant returns (string){
        return name;
    }
    
    function setAge(uint newAge) {
        age = newAge;
    }
    
    function getAge() constant returns (uint){
        return age;
    }
    
}
