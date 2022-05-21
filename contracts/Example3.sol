
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Example3 {
    function getOwnerMargin(uint256 amount)
        public
        view
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        amountForSender = (amount * 70) / 100;
        amountForOwner = (amount * 30) / 100;
    }

}
