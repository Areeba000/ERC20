
# ICO (Initial Coin Offering) Smart Contract

This Ethereum smart contract allows you to conduct an ICO, which is a fundraising method where tokens are sold to participants in exchange for Ether (ETH). The contract provides a straightforward way to manage the ICO process for an ERC-20 token. Please read this README carefully before deploying and using the contract.

## Contract Overview

The `ICO` smart contract facilitates an ICO for a specific ERC-20 token. Participants can send ETH to the contract and receive the project's ERC-20 tokens at a specified rate. The contract offers functions to manage the ICO, withdraw funds, and adjust the token rate.  also keeps track of the raised ETH and the tokens distributed.

    ![Screenshot 2023-10-26 164608](https://github.com/Areeba000/ERC20/assets/140241495/aa3f6915-40ea-4774-8299-6169d5425367)

   ![Screenshot 2023-10-26 165357](https://github.com/Areeba000/ERC20/assets/140241495/5b8e091f-53ad-48a9-96bf-7c2108d2cf01)


   ![Screenshot 2023-10-26 164914](https://github.com/Areeba000/ERC20/assets/140241495/468f9720-2a0b-4237-8900-30ffe191671a)


   ![Screenshot 2023-10-26 164951](https://github.com/Areeba000/ERC20/assets/140241495/1feb5b0c-d497-456b-abc2-95c208185caf)


   ![Screenshot 2023-10-26 165005](https://github.com/Areeba000/ERC20/assets/140241495/cb9add92-652e-4a3a-81cc-7c85954e1d9c)



## Features

1. **Token purchased**: Participants can buy ICO tokens by sending ETH to the contract. The number of tokens received is determined by the specified rat.
   
2. **Rate Adjustment**: The contract owner can change the rate at any time, allowing for flexibility in response to changing market conditions.

3. **Withdrawal of Funds**: After the ICO ends, the contract owner can withdraw the raised ETH from the contract.

4. **Withdrawal of Unsold Tokens**: After the ICO ends, the contract owner can withdraw any unsold tokens that remain in the contract.

5. **Ownership Control**: The contract owner has exclusive control over critical functions, such as finalizing the ICO, rate adjustment, and fund withdrawal.

## Contract Deployment

To deploy the contract, follow these steps:

1. Deploy the contract using a compatible Solidity development environment (e.g., Remix, Truffle, or Hardhat).

2. Pass the required parameters to the constructor when deploying the contract:
   - `_token`: The address of the ERC-20 token being sold.
   - `_rate`: The rate at which tokens will be distributed per ETH.
   - `_durationInDays`: The duration of the ICO in days.
   - `_ethHardCap`: The maximum amount to be raised in ETH.

3. Ensure that the ERC-20 token is already deployed and its address is provided as the `_token` parameter.

4. After deployment, the ICO will be active and participants can buy tokens by sending ETH to the contract address.

## Usage and Operation

1. Participants can buy tokens by sending ETH to the contract using the `buyTokens` function. The number of tokens received will be based on the specified rate. The ICO will only accept ETH if the ICO is still active (i.e., the current time is before the end time).

2. The contract owner can finalize the ICO by calling the `finalizeICO` function, which closes the ICO and prevents further token purchases. This should be done after the ICO has reached its end time or the hard cap.

3. After the ICO is finalized, the owner can use the `withdrawFunds` function to withdraw the raised ETH from the contract.

4. If there are unsold tokens left in the contract after the ICO has ended, the owner can use the `withdrawUnsoldTokens` function to transfer these tokens to their address.

5. The owner can change the token rate at any time using the `changeRate` function.

