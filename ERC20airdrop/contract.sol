//Air Drop for single acount
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Airdrop is Ownable {
    IERC20 public token; // The ERC-20 token to be distributed
    event TokensDistributed(address indexed recipient, uint256 amount);

    constructor(address _token) {
        token = IERC20(_token);
    }

    function distributeTokens(address recipient, uint256 amount) external onlyOwner {
        token.transfer(recipient, amount);
        emit TokensDistributed(recipient, amount);
    }  
//Air Drop for multiple acount
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Airdrop is Ownable {
IERC20 public token; // The ERC-20 token to be distributed

    event TokensDistributed(address indexed recipient, uint256 amount);

    constructor(address _token) {
        token = IERC20(_token);
    }

    function distributeTokens(address[] calldata recipients, uint256[] calldata amounts) external onlyOwner {
        require(recipients.length == amounts.length, "Input lengths do not match");

        for (uint256 i = 0; i < recipients.length; i++) {
            address recipient = recipients[i];
            uint256 amount = amounts[i];

            token.transfer(recipient, amount);

            emit TokensDistributed(recipient, amount);
  }                      
}
