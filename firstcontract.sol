pragma solidity ^0.4.0;

interface Regulator {
    function checkValue(uint amount) public constant returns (bool);
    function loan (uint amount) public constant returns (bool);
}

//Contract for constructor
contract Bank is Regulator {
    uint private value;
    address private owner;
    
    modifier ownerfunc{
        require (owner == msg.sender);
        _;
    }
    
    function Bank(uint amount) public {
        value = amount;
        owner = msg.sender;
    }
    
    function deposit(uint amount) public ownerfunc {
        value += amount;
    }
    
    function withdraw(uint amount) public ownerfunc {
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

//Contract for execution
contract MyFirstContract is Bank(10) {
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

//Error handlers
contract testThrows {
    function testAssert() {
        assert(1 == 2);
    }
    
    function testRequire() {
        require(2 == 1);
    }
    
    function testRevert() {
        revert();
    }
    
    function testThrow() {
        throw;
    }
}