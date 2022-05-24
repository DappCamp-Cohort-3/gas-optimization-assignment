pragma solidity ^0.8.4;

// Example 1 - Variable Packing (Understanding storage slots)
contract Example1 {
    // 20 bytes, 160 bits, 40 hex_chars
    address public ownerAddr = 0x4e653b730367e303D30d8FB39d7350D07a60dfD6;
    // 8 bits, 1 bytes
    uint8 public day = 10;
    // 256 bits, 32 bytes
    uint256 public amount = 1000;
}

// before: 223801
// after: 201951