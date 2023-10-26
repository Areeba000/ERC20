// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ICO is Ownable {
    using SafeERC20 for IERC20;

    IERC20 public token; // The ERC-20 token being sold
    uint256 public rate; // Number of tokens received per ETH
    uint256 public endTime; // ICO end timestamp
    uint256 public hardCap; // Maximum amount to be raised in ETH
    uint256 public raisedAmount; // Amount of ETH raised

    event TokensPurchased(address indexed buyer, uint256 ethAmount, uint256 tokenAmount);
    event ICOFinalized(uint256 totalTokensSold, uint256 totalETHRaised);

    constructor(address _token,uint256 _rate,uint256 _durationInDays,uint256 _ethHardCap) {
        token = IERC20(_token);
        rate = _rate;
        endTime = block.timestamp + _durationInDays ;
        hardCap = _ethHardCap * 1 ether;
        raisedAmount = 0;
    }

    function buyTokens() external payable {
        require(block.timestamp <= endTime, "ICO has ended");
        require(msg.value > 0,"not enough ether");
        uint256 ethAmount = msg.value;
        uint256 tokensToBuy = ethAmount * rate;

        require(raisedAmount + ethAmount <= hardCap, "Hard cap reached");

        token.safeTransfer(msg.sender, tokensToBuy);
        raisedAmount += ethAmount;

        emit TokensPurchased(msg.sender, ethAmount, tokensToBuy);
    }


    function withdrawFunds() external onlyOwner {
        payable(owner()).transfer(address(this).balance);
    }

    function withdrawUnsoldTokens() external onlyOwner {
        uint256 unsoldTokens = token.balanceOf(address(this));
        if (unsoldTokens > 0) {
            token.safeTransfer(owner(), unsoldTokens);
        }
    }

    function changeRate(uint256 newRate) external onlyOwner {
        rate = newRate;
    }
}
