// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;
 
    function incrementBy(uint[] calldata arr) external {
        uint length = arr.length;
        uint _counter;

        for (uint i = 0; i < length; ) {
            _counter += arr[i];
            unchecked {
                ++i;
            }
        }
        counter = _counter;
    }
}