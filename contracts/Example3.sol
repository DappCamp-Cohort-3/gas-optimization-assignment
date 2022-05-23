pragma solidity ^0.8.4;

contract Example3 {
    uint32 constant MARGINPERCENTAGE = 30;

    function getOwnerMargin(uint256 amount)
        public
        pure
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        uint256 _amountForSender = (amount * (100 - MARGINPERCENTAGE)) / 100;
        return (_amountForSender, amount - _amountForSender);
    }
}
