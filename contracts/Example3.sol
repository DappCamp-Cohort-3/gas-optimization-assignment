pragma solidity ^0.8.4;

contract Example3 {
    uint8 marginPercentage = 30;
    uint8 marginInverse = 100 - marginPercentage;

    function getOwnerMargin(uint256 amount)
        external
        view
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        amountForSender = (amount * (marginInverse)) / 100;
        amountForOwner = amount - amountForSender;
    }
}
