# Contract
Solidity Contracts(MyTokens.sol)
This project implements a basic ERC20-like token on the Ethereum blockchain, allowing users to mint and burn tokens. The smart contract stores token details such as name, abbreviation, and total supply, and provides functions to manage token balances.

# Description
MyToken is a smart contract written in Solidity that allows the creation, distribution, and destruction of a custom token. The contract includes functionalities to:

>Store the token name, symbol, and total supply.
>Map addresses to their respective token balances.
>Mint new tokens, increasing the total supply and an address's balance.
>Burn tokens, decreasing the total supply and an address's balance, with checks to ensure sufficient balance.

 
# Getting Started
Installing
To download and use the MyToken smart contract, follow these steps:
Remix IDE:
Navigate to Remix IDE.
Executing program
To run and deploy the smart contract, follow these steps:

Using Remix IDE:
>Create a new file in Remix and name it MyToken.sol.
>Copy and paste the contract code into MyToken.sol.
>Compile the contract using the Solidity compiler (version 0.8.18).
>Deploy the contract using the "Deploy & Run Transactions" tab.
>Interact with the contract through the deployed contract interface.
>// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    // Public variables to store the details about the coin
    string public name = "MyToken";
    string public symbol = "MTK";
    uint256 public totalSupply;

    // Mapping of addresses to balances
    mapping(address => uint256) public balances;

    // Mint function to create new tokens
    function mint(address _to, uint256 _value) public {
        totalSupply += _value;
        balances[_to] += _value;
    }

    // Burn function to destroy tokens
    function burn(address _from, uint256 _value) public {
        require(balances[_from] >= _value, "Insufficient balance to burn");
        totalSupply -= _value;
        balances[_from] -= _value;
    }
}



# Help
For common problems or issues:
Ensure you are using the correct Solidity compiler version (0.8.18).
If using a local development blockchain like Ganache, ensure it is running and configured correctly.
Check for sufficient funds in your wallet to deploy and interact with the contract.
Commands 

*truffle help*
*npx hardhat help*



# Authors
Shubham
# License
This project is licensed under the MIT License - see the LICENSE.md file for details

