Here's a simple README file for your Solidity smart contract `tokenlocker` that allows users to lock and unlock ERC20 tokens:

# Token Locker Contract

This smart contract allows users to lock and unlock ERC20 tokens.

![Screenshot 2023-10-25 165846](https://github.com/Areeba000/ERC20/assets/140241495/bf174bf5-53d0-4f4d-9feb-3b1974845493)


## Functions

### `locktoken`

```solidity
function locktoken(address tokenContract, uint256 tokenamount) public
```

This function allows users to lock ERC20 tokens into the contract. Users must approve the contract to spend their tokens before calling this function. The locked tokens are associated with the user's address and the ERC20 token contract address.

![Screenshot 2023-10-25 170002](https://github.com/Areeba000/ERC20/assets/140241495/f5dd256d-73bb-425f-a7a4-2991239334ad)


![Screenshot 2023-10-25 170046](https://github.com/Areeba000/ERC20/assets/140241495/a374cf65-a5c9-45a6-bc96-68f291c8c394)


![Screenshot 2023-10-25 170158](https://github.com/Areeba000/ERC20/assets/140241495/1be7a7ae-b49a-43a7-8549-66b769754880)



### `unlocktoken`

```solidity
function unlocktoken(address tokenContract, uint256 tokenamount) public
```
![Screenshot 2023-10-25 170232](https://github.com/Areeba000/ERC20/assets/140241495/1be78518-3981-4c61-bb95-c20261053d9d)

Users can use this function to unlock their previously locked tokens. They can unlock tokens up to the amount that they locked. If the user tries to unlock more tokens than they locked, the transaction will revert.

### `istokenLocked`

```solidity
function istokenLocked(address tokenContract, address owner) public view returns (bool)
```

This function allows anyone to check if a specific user has tokens locked in the contract for a specific ERC20 token contract. It returns `true` if tokens are locked, and `false` if there are no locked tokens for the specified user.

## Usage

1. Deploy the `tokenlocker` contract to the Ethereum blockchain.

2. Users must approve the `tokenlocker` contract to spend their ERC20 tokens by calling the `approve` function on the ERC20 token contract.

3. Users can lock their ERC20 tokens using the `locktoken` function, specifying the ERC20 token contract address and the amount to be locked.

4. Users can check if their tokens are locked using the `istokenLocked` function.

5. Users can unlock their locked tokens using the `unlocktoken` function, specifying the ERC20 token contract address and the amount to be unlocked.

## Security Considerations

- Ensure that users have approved the `tokenlocker` contract to spend their ERC20 tokens before calling the `locktoken` function.

- Only the owner of locked tokens can unlock them.

- Be cautious when interacting with smart contracts and transferring tokens.


