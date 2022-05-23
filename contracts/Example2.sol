// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;
 
    function incrementBy(uint[] calldata arr) public {
        //uint sum = counter;
        //uint len = arr.length;
        for (uint idx = 0; idx < arr.length; ++idx){
            counter += arr[idx];
        }
        //counter = sum;
    }
}

// 278343
// 215672
// 215240