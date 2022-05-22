pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;

    function incrementBy(uint[] calldata arr) external {
        uint localCounter = counter;
        uint len = arr.length;

        for (uint idx = 0; idx < len;){
            uint val = arr[idx];
            localCounter += val;
            ++idx;
        }
        counter = localCounter;
    }
    
}