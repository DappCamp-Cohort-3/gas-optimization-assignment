pragma solidity ^0.8.4;

contract Example3 {
    uint256 immutable marginPercentage = 30;
    function getOwnerMargin(uint256 amount)
        public
        pure
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        amountForOwner = (amount * marginPercentage) / 100;
        amountForSender = amount - amountForOwner;

    }

}