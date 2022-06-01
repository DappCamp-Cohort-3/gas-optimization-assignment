pragma solidity ^0.8.4;

contract Example2 {
    uint256 public counter;

    function incrementBy(uint256[] calldata arr) external {
        uint256 length = arr.length;
        uint256 _counter = counter;
        for (uint256 idx = 0; idx < length; ++idx) {
            _counter += arr[idx];
        }
        counter = _counter;
    }
}
