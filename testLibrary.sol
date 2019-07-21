pragma solidity ^0.4.0;

import 'browser/library.sol';

contract testLibrary {
    using intExtended for uint;
    
    function testIncrement(uint _base) returns (uint){
        return intExtended.increment(_base);
    }
    
    function testDecrement(uint _base) returns (uint){
        return intExtended.decrement(_base);
    }
    
    function testIncrementByValue(uint _base, uint _value) returns (uint){
        return _base.incrementByValue(_value);
    }
    
    function testDecrementByValue(uint _base, uint _value) returns (uint){
        return _base.decrementByValue(_value);
    }
}