// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contract that demonstrates the use of reserved keywords in Solidity
contract KeywordDemo {
    address public owner; // 'address' is a type keyword
    uint public number;   // 'uint' is an alias for 'uint256'

    // Constructor is executed only once when the contract is deployed
    constructor() {
        owner = msg.sender; // 'msg.sender' is a global variable referring to the address that deployed the contract
        number = 42;        // Just a placeholder number
    }

    // Function to change the 'number' variable; only the owner can change it
    function setNumber(uint _number) public {
        require(msg.sender == owner, "Only the owner can set the number"); // 'require' is used to validate conditions
        number = _number;
    }

    // Pure function that returns a number without reading or modifying the state
    function getFixedNumber() public pure returns (uint) {
        return 5; // 'pure' indicates that the function doesn't read or modify the state
    }

    // View function that reads the state without modifying it
    function getNumber() public view returns (uint) {
        return number; // 'view' indicates that the function doesn't modify the state
    }

    // Function to demonstrate the use of 'if', 'else', 'while' and 'for' loops
    function controlStructures(uint value) public pure returns (uint) {
        uint result = 0;
        
        // 'if' statement
        if (value > 0) {
            result = value;
        } else {
            result = 1; // 'else' statement
        }

        // 'while' loop
        uint i = 0;
        while (i < value) {
            result += i;
            i++;
        }

        // 'for' loop
        for (uint j = 0; j < value; j++) {
            result += j;
        }

        return result;
    }

    // Event to log when the number is changed
    event NumberChanged(uint oldNumber, uint newNumber);

    // Fallback function
    fallback() external payable {
        // Fallback functions are special functions triggered when no other function matches the call data
    }

    // Receive function to handle incoming ether
    receive() external payable {
        // This function is called when the contract is sent Ether without any data
    }

    // Modifier to restrict access to certain functions
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner"); // 'modifier' is used to define common function logic
        _; // Continue executing the rest of the function
    }

    // Function to demonstrate 'delete' keyword
    function resetNumber() public onlyOwner {
        delete number; // 'delete' is used to reset a variable to its default value
    }

    // Demonstrates the use of 'this' keyword
    function getContractAddress() public view returns (address) {
        return address(this); // 'this' refers to the current contract instance
    }
}
