pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;
 
    function incrementBy(uint[] calldata arr) public {
        uint length = arr.length;
        uint temp = counter;
        for (uint idx = 0; idx < length; idx = unchecked_inc(idx)){
            temp += arr[idx];
        }
        counter = temp;
    }

    function unchecked_inc(uint i) public returns (uint) {
        unchecked {
            return i + 1;
        }
    }
}