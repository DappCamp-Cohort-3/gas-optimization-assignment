pragma solidity ^0.8.4;

contract Example3 {
    uint8 marginPercentage = 30;
    
    function getOwnerMargin(uint32 amount) public view returns (uint256 amountForSender, uint256 amountForOwner) {
        uint8 localMargin = marginPercentage;
        uint32 localAmount = amount;

        amountForSender = (localAmount * (100 - localMargin)) / 100;
        amountForOwner = localAmount - amountForSender;
    }

}

// 10
// 7 - (10*(100-30)) / 100
// 3 - (10*30)/100 