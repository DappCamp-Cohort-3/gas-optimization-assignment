pragma solidity ^0.8.4;

contract Example3 {
    // margin percentage is 30 for this function
    function getOwnerMargin(uint256 amount)
        public
        view
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        amountForSender = (amount * (100 - 30)) / 100;
        amountForOwner = (amount * 30) / 100;
    }

}