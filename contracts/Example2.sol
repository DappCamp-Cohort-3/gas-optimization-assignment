pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;
 
    function incrementBy(uint[] calldata arr) public {
        uint length = arr.length;
        uint _counter;
        for (uint idx = 0; idx < length; ){
            _counter += arr[idx];
            unchecked {
                ++idx;
            }
        }
        counter = _counter;
    }
}