pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;
 
    function incrementBy(uint[] calldata arr) public {
        uint arrayLength = arr.length;
        uint arraySum = 0;
        for (uint idx = 0; idx < arrayLength;) {
            arraySum += arr[idx];
            
            unchecked {
                ++idx;
            }
        }

        counter += arraySum;
    }
}