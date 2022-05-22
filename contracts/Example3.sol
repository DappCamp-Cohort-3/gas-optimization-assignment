// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Example3 {
    uint8 marginPercentage = 30;
    function getOwnerMargin(uint32 amount)
        public
        view
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        uint8 localMarginPercentage = marginPercentage;
        uint32 localAmount = amount;

        amountForSender = (localAmount * (100 - localMarginPercentage)) / 100;
        amountForOwner = (localAmount * localMarginPercentage) / 100;
    }

}