# ERC20
# ERC20 Lock/Unlock, Diamond Proxy, Token Swap, and Staking

This repository contains smart contracts that enable various features, including ERC20 token locking and unlocking, a Diamond Proxy for managing ERC20 tokens, token swapping, and staking. Below, we provide an overview of each component and how to use them.

## ERC20 Lock/Unlock

### Overview

The ERC20 Lock/Unlock smart contract allows users to lock ERC20 tokens. Locked tokens can only be unlocked by the user who locked them. This contract provides methods for locking and unlocking tokens and checking whether a token is currently locked.

### Functions

- `locktoken`: Locks a specified amount of tokens.
- `unlocktoken`: Unlocks previously locked tokens.
- `istokenLocked`: Checks if tokens are currently locked.

## Diamond Proxy for ERC20 Tokens

### Overview

The Diamond Proxy smart contract serves as a proxy for an ERC20 token. It is part of the Diamond Standard, enabling modular and efficient upgrades to the underlying ERC20 token. You can initialize the ERC20 token, transfer tokens, approve spending, mint new tokens, and more using this Diamond Proxy.

### Functions

- `initializeERC20`: Initializes the ERC20 token.
- `transfer`: Transfers tokens between addresses.
- `approve`: Approves a spender to spend tokens on behalf of the owner.
- `transferFrom`: Transfers tokens on behalf of the owner.
- `mint`: Mints new tokens (owner only).
- `burn`: Burns tokens (owner only).
- `allowancefun`: Retrieves the allowance for a spender.
- `gettotalSupply`: Retrieves the total supply of tokens.
- `getbalanceOf`: Retrieves the balance of tokens for a specific owner.

## Token Swap

### Overview

The token swap component allows users to exchange one ERC20 token for another. This contract provides a straightforward way to facilitate token swaps between different token types.

### Functions

- `swapTokens`: Swaps one ERC20 token for another.

## Staking

### Overview

The staking contract allows users to lock and earn rewards for staking tokens. Users can deposit tokens into the staking contract and receive rewards in return. The longer the tokens are staked, the higher the rewards.

### Functions

- `stakeTokens`: Locks tokens for staking.
- `unstakeTokens`: Unlocks and withdraws staked tokens.
- `claimRewards`: Claims rewards for staking.

## Usage

1. Deploy the relevant smart contracts to the Ethereum blockchain.

2. Interact with the ERC20 Lock/Unlock contract to lock and unlock tokens.

3. Use the Diamond Proxy to manage ERC20 tokens, including initializing the token, transferring tokens, and more.

4. Employ the token swap contract to exchange one ERC20 token for another.

5. Participate in staking by staking tokens, unstaking, and claiming rewards.

6. Follow the specific instructions for each contract for more details on usage and access control.


