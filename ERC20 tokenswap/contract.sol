// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

// Import the ERC20 interface for interacting with ERC20 tokens.
interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

// TokenSwap contract for swapping tokens between two parties.
contract TokenSwap {
    IERC20 public token1; // The first ERC20 token.
    IERC20 public token2; // The second ERC20 token.
    address public owner1; // The address of the owner of token1.
    address public owner2; // The address of the owner of token2.

    // Constructor to initialize the contract with token addresses and owners.
    constructor(address _token1, address _owner1, address _token2, address _owner2) {
        token1 = IERC20(_token1);
        owner1 = _owner1;
        token2 = IERC20(_token2);
        owner2 = _owner2;
    }

    // Swap tokens between owner1 and owner2.
    function swap(uint256 _amount1, uint256 _amount2) public {
        require(msg.sender == owner1 || msg.sender == owner2, "Not authorized");
        require(token1.allowance(owner1, address(this)) >= _amount1, "Token 1 allowance too low");
        require(token2.allowance(owner2, address(this)) >= _amount2, "Token 2 allowance too low");

        _safeTransferFrom(token1, owner1, owner2, _amount1);
        _safeTransferFrom(token2, owner2, owner1, _amount2);
    }

    // Internal function to safely transfer tokens between two addresses.
    function _safeTransferFrom(IERC20 token, address sender, address recipient, uint256 amount) private {
        bool sent = token.transferFrom(sender, recipient, amount);
        require(sent, "Token transfer failed");
    }
}
