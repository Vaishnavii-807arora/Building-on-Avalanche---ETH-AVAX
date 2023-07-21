# FancyToken - A Custom ERC-20 Token

## Description:
FancyToken is an Ethereum smart contract that implements a custom ERC-20 token with additional functionalities. It provides the standard ERC-20 features for managing fungible tokens while incorporating owner-specific capabilities, token locking, and a redemption mechanism.

### Functionality:

1.Token Creation and Minting:
The contract creator deploys the contract and mints an initial supply of 1000 tokens with the symbol "FT" (FancyToken).

2.Owner-Only Minting:
The contract owner can mint additional tokens and allocate them to any specified address.

3.Burning Tokens:
Token holders can burn a specified amount of their tokens, effectively reducing the token supply.

4.Token Transfer with Timelock:
Token holders can transfer their tokens to other addresses, but a time lock mechanism prevents immediate transfers after a specific time period (1 day).

   5.Check Timelock:
   Users can query the timestamp until which their tokens are locked for transfer.

   6.Token Redemption (Commented Out):
   A token holder can redeem 100 tokens for a corresponding amount of Ether, as determined by the conversion rate set by the contract owner. This functionality is currently commented out and disabled.

## Getting Started

1. Setting up Avalanche on MetaMask: Add the following configuration to set up RPC to FUJI Testnet:

      FUJI Testnet Settings:
      Network Name: Avalanche FUJI C-Chain
      New RPC URL: api.avax-test.network/ext/bc/C/rpc
      ChainID: 43113
      Symbol: AVAX
      Explorer: testnet.snowtrace.io

3. Funding your C-Chain address: To send money from the X-Chain to your C-Chain address on the main net, copy and paste the C-Chain address into faucet.avax.network.

4. Smart Contract Development and building of smart contract.

5. Deployment and Interaction:

* Deploy the contract on the Ethereum network using a compatible development environment.
+ Optionally, uncomment and set the conversion rate for token redemption.
- Properly test and validate the contract's functionalities.
* Use compatible wallets or interfaces to interact with the contract, allowing token transfers and, if enabled, redemption.

5. Import Token on MetaMask

6. Verify Smart Contract Deployment on Snowtrace
In this step, you will verify your smart contract deployment and other information on Snowtrace. SnowTrace enables you to browse and search the Avalanche C-Chain blockchain for transactions, addresses, tokens, prices, and other Avalanche C-Chain activities (AVAX).
https://testnet.snowtrace.io/

## Author
Vaishnavi Arora

## License
This contract is licensed under the MIT License. SPDX-License-Identifier: MIT.
