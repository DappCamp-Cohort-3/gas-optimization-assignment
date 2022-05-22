// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;
 
    function incrementBy(uint[] calldata arr) public {
        
        uint localCounter = counter;
        uint length = arr.length;

        for (uint idx = 0; idx < length;){
            localCounter += arr[idx];

            unchecked {
                ++idx;
            }
        }

        counter = localCounter;
    }
}