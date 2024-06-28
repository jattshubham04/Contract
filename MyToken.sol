// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/// @title MyToken Contract
/// @notice This contract implements a basic token with mint and burn functionalities
/// @custom:dev-run-script ./scripts/deploy_with_ethers.ts
contract MyToken {
    // Public variables to store token details
    string public tokenName;
    string public tokenAbbrv;
    uint256 public totalSupply;

    // Mapping from addresses to balances
    mapping(address => uint256) public balances;

    /// @notice Constructor to set initial values
    /// @param _name The name of the token
    /// @param _abbrv The abbreviation of the token
    constructor(string memory _name, string memory _abbrv) {
        tokenName = _name;
        tokenAbbrv = _abbrv;
        totalSupply = 0;
    }

    /// @notice Mints new tokens to the specified address
    /// @param _to The address to mint tokens to
    /// @param _value The number of tokens to mint
    function mint(address _to, uint256 _value) public {
        totalSupply += _value;
        balances[_to] += _value;
    }

    /// @notice Burns tokens from the specified address
    /// @param _from The address to burn tokens from
    /// @param _value The number of tokens to burn
    function burn(address _from, uint256 _value) public {
        require(balances[_from] >= _value, "Insufficient balance to burn");
        totalSupply -= _value;
        balances[_from] -= _value;
    }
}


