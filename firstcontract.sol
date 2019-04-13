pragma solidity ^0.4.0;

contract Bank {
    uint private value;
    
    function Bank(uint amount) public {
        value = amount;
    }
    
    function deposit(uint amount) public {
        value += amount;
    }
    
    function withdraw(uint amount) public {
        if (checkValue(amount)) {
            value -= amount;
        }
    }
    
    function balance() public constant returns (uint){
        return value;
    }
    
    function checkValue(uint amount) public constant returns (bool){
        return value >= amount;
    }
    
    function loan() public constant returns (bool){
        return value > 0;
    }
}

contract MyFirstContract is Bank(10){
    string private name;
    uint private age;
    
    function setName(string newName) public {
        name = newName;
    }
    
    function getName() public constant returns (string){
        return name;
    }
    
    function setAge(uint newAge) public {
        age = newAge;
    }
    
    function getAge() public constant returns (uint){
        return age;
    }

}
