// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Example3 {
    //uint256 marginPercentage = 30;
    function getOwnerMargin(uint256 amount)
        public
        pure
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        amountForSender = (amount * (100 - 30)) / 100;
        amountForOwner = (amount * 30) / 100;
        return (amountForSender, amountForOwner);
    }

}

//219659
//183277