
# ERC-20 Single Account Transfer Airdrop

This Ethereum smart contract allows you to distribute ERC-20 tokens to a single recipient address. Please read this README carefully before deploying and using the contract.

## Contract Overview

The `Airdrop` smart contract is designed for a simplified ERC-20 token distribution process. It allows the contract owner to transfer tokens to a specified recipient address. This is useful for single-account airdrops, where you want to distribute tokens to a specific account, such as a winner of a contest or a promotional recipient.

## Features

1. **Token Distribution**: The owner of the contract can specify a recipient address and the token amount to distribute.

2. **Ownership Control**: The contract owner has exclusive control over the token distribution process.

## Contract Deployment

To deploy the contract, follow these steps:

1. Deploy the contract using a compatible Solidity development environment (e.g., Remix, Truffle, or Hardhat).

2. Pass the address of the ERC-20 token to the constructor when deploying the contract.

3. Ensure that the ERC-20 token is already deployed, and its address is provided as the `_token` parameter.

4. After deployment, the contract owner can transfer tokens to a specified recipient using the `distributeTokens` function.

## Usage and Operation

1. The contract owner (administrator) can call the `distributeTokens` function to initiate the airdrop. This function takes two parameters:
   - `recipient`: The address of the recipient who will receive the tokens.
   - `amount`: The token amount to transfer to the recipient.

2. Upon successful execution of `distributeTokens`, the specified token amount will be transferred to the recipient's address.

3. The contract emits an event `TokensDistributed`, providing transparency and record-keeping of the token distribution.


# ERC-20 Multiple Account Transfer Airdrop

This Ethereum smart contract allows you to distribute ERC-20 tokens to multiple recipient addresses in a batch process. Please read this README carefully before deploying and using the contract.

## Contract Overview

The `Airdrop` smart contract is designed for distributing ERC-20 tokens to a list of recipient addresses. It enables you to conduct a bulk token distribution, which is useful for promotional campaigns, giveaways, or other use cases where tokens need to be distributed to multiple accounts.

## Features

1. **Token Distribution**: The owner of the contract can specify a list of recipient addresses and the corresponding token amounts to distribute.

2. **Ownership Control**: The contract owner has exclusive control over the token distribution process.

## Contract Deployment

To deploy the contract, follow these steps:

1. Deploy the contract using a compatible Solidity development environment (e.g., Remix, Truffle, or Hardhat).

2. Pass the address of the ERC-20 token to the constructor when deploying the contract.

3. Ensure that the ERC-20 token is already deployed, and its address is provided as the `_token` parameter.

4. After deployment, the contract owner can distribute tokens to multiple recipients using the `distributeTokens` function.

## Usage and Operation

1. The contract owner (administrator) can call the `distributeTokens` function to initiate the airdrop. This function takes two arrays as parameters:
   - `recipients`: An array of recipient addresses.
   - `amounts`: An array of token amounts corresponding to the recipients.

   The two arrays should have the same length, and each recipient will receive the specified amount of tokens.

2. Upon successful execution of `distributeTokens`, the specified token amounts will be transferred to the recipient addresses in a batch process.

3. The contract emits an event `TokensDistributed` for each successful token distribution, providing transparency and record-keeping.
