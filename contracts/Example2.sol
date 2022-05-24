pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;

    function incrementBy(uint[] calldata arr) public {
        uint array_len = arr.length;
        uint _counter = counter;
        for (uint idx = 0; idx < array_len;) {
            _counter += arr[idx];
        unchecked{
            ++idx;
        }
        }


        counter = _counter;
    }
}
