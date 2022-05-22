pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;
 
    function incrementBy(uint[] calldata arr) external {
        uint lc = counter;
        uint al = arr.length;
        uint idx;
        for (; idx < al;){
            lc += arr[idx];
            unchecked{
                ++idx;
            }
        }
        counter = lc;
    }
}