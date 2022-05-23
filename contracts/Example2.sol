// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;

    function incrementBy(uint[] calldata arr) external
    {
        uint _counter;
        uint idx;
        uint _length = arr.length;

        // Not a good idea in general to wrap the loop in unchecked, but it works for this case
        // and we squeeze another 1000 gas when compared to the original for loop
        unchecked
        {
            while (idx != _length)
            {
                _counter += arr[idx]; // 'OK' to overflow
                ++idx;
            }
        }

        counter = _counter;
    }
}