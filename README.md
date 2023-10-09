# Project
This is a beginner Solidity Smart Contract to demonstrate the basics of Solidity.

# Description
The contract contains 3 state variables including the tokenName, tokenSymbol and totalSupply.

It has a mapping (Adddress => uint) named balances mapping Addresses to their respective balances.

It also contains 2 functions namely mint and burn which work as their name would suggest. Minting increases the total supply as well as the balance of person who runs this function by a certain value passed to the function as a parameter.

Burning function checks whether the person who run the function has enough tokens and if they do, it reduces that amount of token from that person's balance as well as from the total supply. It utilizes the require keyword which throws an error if the condition is not met.
```

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

```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile Test.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyCoinToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the Mint or Burn function. Click on the "MyCoinToken" contract in the left-hand sidebar, and then click on the "Mint" function.

# Help
Make sure to have the compiler option set to 0.8.18 to avoid version depenedency errors.

pragma solidity ^0.8.18
# Authors
Ashish Kumar

# License
This project is licensed under the MIT License - see the LICENSE.md file for details
