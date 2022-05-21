// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;

    function incrementBy(uint[] calldata arr) external  {
        uint _counter = counter;
      //  uint8 length = uint8(arr.length);
        for (uint idx = 0; idx < arr.length; idx++){
            _counter += arr[idx];
        }
        counter = _counter;
    }
}
