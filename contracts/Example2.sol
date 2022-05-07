pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;
 
    function incrementBy(uint[] memory arr) public {
        for (uint idx = 0; idx < arr.length; idx++){
            counter += arr[idx];
        }
    }
}