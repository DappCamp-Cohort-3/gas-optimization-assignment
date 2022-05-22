//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;
    function incrementBy(uint[] calldata arr) public {
        // uint idx;
        uint count;        
        uint length = arr.length;
        for (uint idx=0; idx < length; ) {
            count += arr[idx];
            unchecked {
                idx++;
            }
        }
        counter = count;
    }
}
