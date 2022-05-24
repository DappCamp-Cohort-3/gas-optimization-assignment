pragma solidity ^0.8.4;

contract Example2 {
    uint public counter;
 
    function incrementBy(uint[] calldata arr) public {
        uint _counter;
        uint arrLen = arr.length;

        for (uint idx; idx < arrLen;){
            _counter += arr[idx];
            unchecked {
                ++idx;
            }
        }
        counter = _counter;
    }
}

// before: 270453, incrementBy: 48k (avg), 50k (testcase)

// * pre-increment (++idx) instead of post-increment (idx++) - 270021, decrease
// like other languages, i++ would result in increment but the expression maintains previous value
// overhead with i++: maintain previous value and current value
// ++i would result in increment as well but expression returns value after the change

// * unchecked increment - 252956, decrease
// updated from checked arithmetic to unchecked
// overflow not possible, value of idx will always be length's max value (2**256 - 1)


// * arr as calldata - 186811, decrease
// memory makes a copy of arr on every operation
// instead, calldata references arr by location

// * arr.length assignment - 188107 (total gas increased), 47731 (no change in incrementBy)
// before change: 186595, 46671
// after change: 187891, 46636
// [?] This optimization would be useful for large arrays (> 50 elements). Right?

// * updated "uint idx = 0" to "uint idx" - no gas change
// default assignment by solidity for uint is 0
// Assumed that non-necessary assignment would save gas.

// * create a local variable copy (_counter) of storage variable (counter) - 187891, 46636
// using a local variable for loop operations and assigning them back to storage variable save read/write ops on storage variable

// final: 187891