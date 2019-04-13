pragma solidity ^0.4.0;

interface Regulator {
    function checkValue(uint amount) constant returns (bool);
    function loan() constant returns (bool);
}

contract Bank is Regulator {
    uint private value;
    
    function Bank(uint amount){
        value = amount;
    }
    
    function deposit(uint amount) {
        value += amount;
    }
    
    function withdraw(uint amount) {
        if (checkValue(amount)) {
            value >= amount;
        }
    }
    
    function balance() constant returns (uint){
        return value;
    }
    
    function checkValue() constant returns (bool){
        return amount <= value;
    }
    
    function loan() constant returns (bool){
        return value > 0;
    }


contract MyFirstContract is Bank(10){
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
