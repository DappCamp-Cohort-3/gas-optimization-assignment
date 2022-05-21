pragma solidity ^0.8.4;

contract Example3 {
    uint constant marginPercentage = 30;

    function getOwnerMargin(uint256 amount)
        public
        pure
        returns (uint256, uint256)
    {
        uint amountForOwner = (amount * marginPercentage) / 100;
        return (amount - amountForOwner, amountForOwner);
    }
}
