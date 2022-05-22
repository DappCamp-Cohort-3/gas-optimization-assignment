pragma solidity ^0.8.4;

contract Example3 {
    uint256 marginPercentage = 30;
    function getOwnerMargin(uint256 amount)
        public
        view
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        uint _marginPercentage = marginPercentage;
        uint _amount = amount;

        amountForSender = (_amount * (100 - _marginPercentage)) / 100;
        amountForOwner = (_amount * _marginPercentage) / 100;
    }

}