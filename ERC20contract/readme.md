Here's a basic README file for your ERC-20 token contract:

# Custom ERC-20 Token Contract

This is a custom implementation of an ERC-20 token contract on the Ethereum blockchain. The contract allows you to create and manage your own digital currency. It follows the ERC-20 standard, making it compatible with a wide range of Ethereum wallets and applications.

## Contract Details

- **Name:** CustomERC20
- **Symbol:** CUST
- **Decimals:** 18 (modifiable)
- **Owner:** [Your Ethereum Address]

## Getting Started

To use this custom ERC-20 token contract, you can deploy it on the Ethereum blockchain using tools like Remix, Truffle, or Hardhat. Make sure to customize the contract by providing a unique name, symbol, and total supply during deployment.

### Prerequisites

- Ethereum Wallet (e.g., MetaMask)
- Solidity Compiler
- Development Environment (e.g., Remix, Truffle, Hardhat)

### Deployment

1. Customize the contract by setting a unique name, symbol, and the number of decimal places (e.g., 18) in the constructor:

   ```solidity
   constructor(string memory _name, string memory _symbol, uint8 _decimals) {
       owner = msg.sender;
       name = _name;
       symbol = _symbol;
       decimals = _decimals;
   }
   ```

2. Deploy the contract on the Ethereum blockchain using your preferred development environment.

3. Once deployed, the contract will be assigned a unique Ethereum address. You can interact with the contract using this address.

## Usage

This custom ERC-20 token can be used for various purposes, including creating your own digital currency, managing tokens, and facilitating transactions on the Ethereum network. You can interact with the contract through methods like `transfer`, `approve`, and `transferFrom` as specified by the ERC-20 standard.

### Minting Tokens

Only the owner of the contract can mint new tokens. To mint tokens, use the `mint` function:

```solidity
function mint(address account, uint256 amount) external onlyowner {
    require(account != address(0), "ERC20: mint to the zero address");
    totalSupply += amount;
    balanceOf[account] += amount;
    emit Transfer(address(0), msg.sender, amount);
}
```

### Burning Tokens

Only the owner of the contract can burn tokens. To burn tokens, use the `burn` function:

```solidity
function burn(address account, uint256 amount) external onlyowner {
    require(account != address(0), "ERC20: mint to the zero address");
    balanceOf[account] -= amount;
    totalSupply -= amount;
    emit Transfer(msg.sender, address(0), amount);
}
```

For more information on how to interact with ERC-20 contracts, refer to the official [ERC-20 documentation](https://eips.ethereum.org/EIPS/eip-20).

![Screenshot 2023-10-25 132725](https://github.com/Areeba000/ERC20/assets/140241495/1c2448ea-62ac-48c1-b625-9ecdde2bb1f8)


![Screenshot 2023-10-25 132743](https://github.com/Areeba000/ERC20/assets/140241495/1dad9ceb-6f40-47b1-b769-624d7f004bca)



