pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;
 
    function incrementBy(uint[] calldata arr) external {
        uint _counter;
        uint[] calldata _arr = arr;
        for (uint idx = 0; idx < _arr.length; idx++){
            _counter += _arr[idx];
            
        }
        counter = _counter;
    }
}