// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VisibilityDemo {
    
    // Public variable: accessible both inside and outside the contract
    string public publicVar = "I am public!";

    // Private variable: accessible only within this contract
    string private privateVar = "I am private!";

    // Internal variable: accessible within this contract and derived contracts
    string internal internalVar = "I am internal!";

    // External variable (not allowed, but shown here to demonstrate its use in functions)
    // string external externalVar = "I am external!"; // This line would cause an error

    // Public function: accessible from everywhere
    function publicFunction() public view returns (string memory) {
        return "I am a public function!";
    }

    // Private function: accessible only within this contract
    function privateFunction() private view returns (string memory) {
        return "I am a private function!";
    }

    // Internal function: accessible within this contract and derived contracts
    function internalFunction() internal view returns (string memory) {
        return "I am an internal function!";
    }

    // External function: accessible only outside the contract
    function externalFunction() external view returns (string memory) {
        return "I am an external function!";
    }

    // Function to demonstrate calling functions with different visibility within the contract
    function testVisibility() public view returns (
        string memory, 
        string memory, 
        string memory, 
        string memory
    ) {
        string memory pub = publicFunction(); // Can call public function
        string memory pri = privateFunction(); // Can call private function
        string memory intFunc = internalFunction(); // Can call internal function
        // string memory ext = externalFunction(); // Cannot call external function from within

        return (pub, pri, intFunc, "External function cannot be called internally");
    }
}

// Contract to demonstrate access to internal members
contract DerivedContract is VisibilityDemo {
    function testDerived() public view returns (
        string memory, 
        string memory, 
        string memory
    ) {
        string memory pub = publicFunction(); // Can call public function
        // string memory pri = privateFunction(); // Cannot call private function
        string memory intFunc = internalFunction(); // Can call internal function
        // string memory ext = externalFunction(); // Cannot call external function

        return (pub, "Cannot access private function", intFunc);
    }
}
