pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;
 
    function incrementBy(uint[] calldata arr) external {
        uint _counter=counter;
        uint arrLength= arr.length;
        for (uint idx ; idx < arrLength;){
            _counter += arr[idx];
            unchecked{
            ++idx;
        }
        }
        
        counter = _counter;
    }
}