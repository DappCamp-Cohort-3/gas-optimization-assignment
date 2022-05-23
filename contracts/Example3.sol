// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Example3 {
    uint8 marginPercentage = 30;
    function getOwnerMargin(uint256 amount)
        public
        view
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        uint8 localMarginPercentage = marginPercentage;
        uint256 localAmount = amount;

        amountForOwner = (localAmount * localMarginPercentage) / 100;
        amountForSender = localAmount - amountForOwner;
        
    }

}