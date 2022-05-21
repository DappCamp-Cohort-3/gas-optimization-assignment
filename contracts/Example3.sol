pragma solidity ^0.8.4;

contract Example3 {
    uint256 constant marginPercentage = 30;

    function getOwnerMargin(uint256 amount)
        external
        pure
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        uint256 _marginPercentage = marginPercentage;
        amountForSender = (amount * (100 - _marginPercentage)) / 100;
        amountForOwner = (amount * _marginPercentage) / 100;
    }
}
