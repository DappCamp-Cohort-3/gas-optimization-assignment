pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;
 
    function incrementBy(uint[] calldata arr) external {
        uint _counter = counter;
        uint length = arr.length;
        for (uint idx; idx < length; ++idx){
            _counter += arr[idx];
        }
        counter = _counter;
    }
}