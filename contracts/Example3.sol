pragma solidity ^0.8.4;

contract Example3 {
    uint256 marginPercentage = 30;

    function getOwnerMargin(uint256 amount)
        external
        view
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        uint256 marginPercentageLocal = 30;
        amountForSender = (amount * (100 - marginPercentageLocal)) / 100;
        amountForOwner = (amount * marginPercentageLocal) / 100;
    }
}
