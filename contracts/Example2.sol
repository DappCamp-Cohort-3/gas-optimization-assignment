pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;

    function incrementBy(uint[] calldata arr) external {
        uint length = arr.length;
        uint updatedCounter;
        for (uint idx = 0; idx < length; ++idx) {
            updatedCounter += arr[idx];
        }
        counter = updatedCounter;
    }
}
