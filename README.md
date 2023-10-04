# Project
This is a beginner Solidity Smart Contract to demonstrate the basics of Solidity.

# Description
The contract contains 3 state variables including the Amazon, Flipkart and TotalParcel.

It has a mapping (Adddress => uint) named balances mapping Addresses to their respective balance.

It also contains 2 functions namely Deposit and Withdraw which work as their name would suggest. Depositing increases the total supply as well as the balance of person who runs this function by a certain value passed to the function as a parameter.

Withdraw function checks whether the person who run the function has enough tokens and if they do, it reduces that amount of token from that person's balance as well as from the total supply. It utilizes the require keyword which throws an error if the condition is not met.

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract google {

    // public variables here

    string public Amazon="Ashish";
    string public Flipkart="Kumar";

    uint public totalParcel = 0;
    
    // mapping variable here

    mapping(address => uint )public balance;

    // mint function

    function Deposit (address _address,uint _value) public 
    {
        totalParcel += _value;
        balance[_address] += _value;
    }

    // burn function
     function Withdraw (address _address,uint _value) public 
    {
        if(balance[_address] >= _value)
        {
        totalParcel -= _value;
        balance[_address] -= _value;
        }
    }

}
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile Test.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "google" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the Deposit or Withdraw function. Click on the "google" contract in the left-hand sidebar, and then click on the "Deposit" function.

# Help
Make sure to have the compiler option set to 0.8.18 to avoid version depenedency errors.

pragma solidity ^0.8.18
# Authors
Ashish Kumar

# License
This project is licensed under the MIT License - see the LICENSE.md file for details
