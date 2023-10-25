# TokenSwap Smart Contract

The TokenSwap smart contract allows two parties to exchange ERC20 tokens securely and efficiently. It is especially useful when two users need to swap tokens with each other while maintaining the trustless nature of the transaction.

## Features

- Swaps ERC20 tokens between two parties.
- Ensures that the token allowances are sufficient for the swap to occur.
- Built to be secure and prevent unauthorized access.

## Getting Started

To use the TokenSwap smart contract, you'll need to deploy it on the Ethereum blockchain. Here are the steps to get started:

![Screenshot 2023-10-25 183338](https://github.com/Areeba000/ERC20/assets/140241495/78323a5a-8860-47e8-bbe2-2dc1241efd53)


1. Deploy the TokenSwap contract by providing the addresses of the two ERC20 tokens and their respective owners.

2. ![Screenshot 2023-10-25 183314](https://github.com/Areeba000/ERC20/assets/140241495/8dfdab55-d934-4795-97ef-5f5f6bb5cca1)
   

![Screenshot 2023-10-25 183433](https://github.com/Areeba000/ERC20/assets/140241495/b2b1baa7-8e69-4751-bee4-a1adf8ea926a)



3. Execute the `swap` function with the required parameters to perform the token exchange.

4. Ensure that both parties approve the TokenSwap contract to transfer tokens on their behalf.

5. ![Screenshot 2023-10-25 183657](https://github.com/Areeba000/ERC20/assets/140241495/743c7444-1196-4386-b99a-fbd513f6bf78)


## Smart Contract Functions

### Constructor

- `constructor(address _token1, address _owner1, address _token2, address _owner2)`: Initializes the contract with the addresses of two ERC20 tokens and their respective owners.

### Public Functions

- `swap(uint256 _amount1, uint256 _amount2)`: Swaps tokens between the two parties.
  - Requires that the sender is one of the two owners.
  - Checks if token allowances are sufficient for the swap.

## Requirements

- An Ethereum wallet or development environment to deploy and interact with the smart contract.
- ERC20 tokens that you want to swap.
- Ensure that both parties approve the TokenSwap contract to spend their tokens by using the `approve` function of the ERC20 token.

## Example Usage

Here is an example of how to use the TokenSwap contract:

1. Deploy the TokenSwap contract with the addresses of two ERC20 tokens (e.g., Token1 and Token2) and their respective owners (e.g., Owner1 and Owner2).

2. Ensure that Owner1 approves the TokenSwap contract to spend Token1, and Owner2 approves it to spend Token2.

3. Either Owner1 or Owner2 can call the `swap` function with the desired token amounts to initiate the swap.

4. The contract will verify that the allowances are sufficient and execute the swap.

## Security Considerations

- Ensure that the addresses provided for token owners are accurate and have approved the TokenSwap contract.

- Verify the allowances to prevent token transfers from failing.

- Use this contract only with trusted parties and in a safe environment.


