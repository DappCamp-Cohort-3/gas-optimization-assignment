pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;

    function incrementBy(uint[] calldata arr) external {
        uint len = arr.length;
        uint tempCounter;
        for (uint idx = 0; idx < len; ) {
            tempCounter += arr[idx];
            unchecked {
                ++idx;
            }
        }
        counter += tempCounter;
    }
}
