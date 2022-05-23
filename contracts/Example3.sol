// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

contract Example3 {

    uint256 constant marginPercentage = 30;

    function getOwnerMargin(uint256 amount)
        public
        pure
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        // uint256 _marginPercentage = marginPercentage;
        // amountForSender = (amount * (100 - _marginPercentage)) / 100;
        // amountForOwner = (amount * _marginPercentage) / 100;

        // code below is equivalent; saves 350 gas
        uint amount_over_100 = amount / 100;
        amountForOwner = marginPercentage * amount_over_100;
        amountForSender = amount - amountForOwner;
    }

}