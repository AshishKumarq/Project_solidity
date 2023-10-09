
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyCoinToken {
    // Public variables for token details
    string public tokenName = "MyCoin"; 
    string public tokenSymbol = "MC";   
    uint public totalSupply = 0;        

    // Mapping of addresses to token balances
    mapping(address => uint) public balances;

    // Mint function to create new tokens
    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Burn function to destroy tokens
    function burn(address _address, uint _value) public {
        if(balances[_address] >= _value)
        {
        totalSupply -= _value;
        balances[_address] -= _value;
        }
    }
}
