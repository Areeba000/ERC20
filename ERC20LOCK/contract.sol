// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
contract tokenlocker {
    mapping(address => mapping(address => uint256)) public lockedTokens;
    
    function locktoken(address tokenContract, uint256 tokenamount) public {
        IERC20(tokenContract).transferFrom(msg.sender, address(this), tokenamount);
        lockedTokens[tokenContract][msg.sender] += tokenamount;
    }

    function unlocktoken(address tokenContract, uint256 tokenamount) public {
        require(lockedTokens[tokenContract][msg.sender] >= tokenamount, "not enough locked");
        IERC20(tokenContract).transfer(msg.sender, tokenamount);
        lockedTokens[tokenContract][msg.sender] -= tokenamount;
    }

    function istokenLocked(address tokenContract, address owner) public view returns (bool) {
        return lockedTokens[tokenContract][owner] > 0;
    }
}
