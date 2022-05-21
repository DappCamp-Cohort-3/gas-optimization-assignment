// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;
 
    function incrementBy(uint[] memory arr) public {
       uint _cntr = counter;
       uint _len = arr.length;
        for (uint idx = 0; idx <  _len;){
            _cntr += arr[idx];
            unchecked {
                ++idx;
            }
        }
       counter = _cntr;

    }
}

// deploy: 280131

// deploy: 281001


// execution: 54491
// execution: 52528
// e: 49238
// 
