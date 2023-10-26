
# ERC-20 Token Management Suite

This Ethereum smart contract suite provides a comprehensive set of functionalities for managing ERC-20 tokens. The suite includes contracts for Locking/Unlocking tokens, Diamond Proxy, Token Swapping, Staking, ICO (Initial Coin Offering), and Airdrop. Below is an overview of each component:

## 1. Lock/Unlock

The Lock/Unlock contract allows token holders to lock a portion of their ERC-20 tokens for a specified period. After the lock period expires, they can unlock and access their tokens. This is useful for vesting schedules or governance token distribution.

### Contract Functions

- `lockTokens(uint256 amount, uint256 lockDuration)`: Locks a specified amount of tokens for a given duration.
- `unlockTokens()`: Unlocks previously locked tokens after the lock period expires.

## 2. Diamond Proxy

The Diamond Proxy contract is an upgradeable contract pattern that enables flexible and efficient upgrades of smart contracts. It uses the Diamond Standard to manage multiple facets (functions) of a contract, making it easier to add new functionality without replacing the entire contract.

### Contract Functions

- Adding and managing facets (functions) for the contract.

## 3. Token Swap

The Token Swap contract facilitates the exchange of one ERC-20 token for another at a predefined rate. It can be used for migrations, token swaps, or converting tokens from one standard to another (e.g., from an old token standard to the latest version).

### Contract Functions

- `swapTokens(uint256 amount)`: Swaps a specified amount of one token for another at the defined rate.

## 4. Staking

The Staking contract allows users to stake ERC-20 tokens to earn rewards or participate in network governance. Users can stake tokens and receive rewards or voting power.

### Contract Functions

- `stakeTokens(uint256 amount)`: Allows users to stake tokens.
- `unstakeTokens(uint256 amount)`: Allows users to unstake their tokens.
- `getStakingInfo(address user)`: Retrieves staking information for a specific user.

## 5. ICO (Initial Coin Offering)

The ICO contract enables the launch of a token sale event. Participants can send ETH and receive the project's ERC-20 tokens at the ICO rate. This is commonly used for fundraising during project launches.

### Contract Functions

- `participateInICO(uint256 amount)`: Allows participants to buy ICO tokens by sending ETH.
- `finalizeICO()`: Finalizes the ICO, distributing tokens to participants.

## 6. Airdrop

The Airdrop contract simplifies the distribution of tokens to a large number of addresses. It allows the project team to distribute tokens for promotional or community-building purposes.

### Contract Functions

- `addAirdropRecipient(address recipient, uint256 amount)`: Adds an address to receive a specified amount of tokens.
- `distributeAirdropTokens()`: Distributes tokens to the registered addresses.

## Usage

To deploy and use these contracts, follow the instructions for each contract individually. You can customize these contracts to fit the requirements of your project, such as specifying lock durations, token swap rates, staking rewards, ICO parameters, and airdrop distribution details.

Ensure that you thoroughly test and audit the contracts before deploying them to the Ethereum mainnet, especially when dealing with real assets or financial transactions.

