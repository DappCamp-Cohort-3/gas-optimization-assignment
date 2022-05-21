pragma solidity ^0.8.4;

contract Example3 {
    uint256 marginPercentage = 30;
    function getOwnerMargin(uint256 amount)
        public
        view
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        amountForSender = (amount * (100 - marginPercentage)) / 100;
        // change it from multiple to subtraction.
        amountForOwner = amount - amountForSender;
    }

}

// deploy: 219743
// execution: 25089

// change it from multiple to subtraction.
// deploy: 219731
// execution: 24786