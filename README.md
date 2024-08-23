# Blockchain-Basic 
simple implementations to understand the core concepts of blockchain technology. 

### What is Blockchain?

Blockchain is a system that records transactions across many computers. It is decentralized, meaning no single person or group controls it. Each transaction is stored in a block, and these blocks are linked in a chain. Once a block is added, it cannot be changed without altering all the blocks that follow. This makes blockchain secure and trustworthy.

### Key Concepts:
- **Decentralization:** The blockchain is managed by a network of computers, not one central authority.
- **Immutability:** Once data is added to the blockchain, it cannot be changed or removed.
- **Transparency:** All transactions are visible to everyone on the network.
- **Security:** Blockchain uses cryptography to keep data safe and ensure transactions are valid.

###Languages Commonly Used in Blockchain Development:
 
- **Python:** 
        Python is widely used in blockchain development for scripting, automating tasks, and creating prototypes. It's also popular in the data science community, which can be beneficial for blockchain analytics and simulations.
        Libraries like Web3.py allow interaction with the Ethereum blockchain, making Python a versatile choice for developers.

- **Solidity:** 
        Solidity is the primary programming language for writing smart contracts on the Ethereum blockchain. It’s a statically-typed language that runs on the Ethereum Virtual Machine (EVM).
        With Solidity, developers can create decentralized applications (DApps) and smart contracts, which are self-executing contracts with the terms of the agreement directly written into code.

# Specific reserved keywords:

- **address:**  A type that holds an Ethereum address (20 bytes). In this contract, it's used to store the contract owner's address.

- **public:**  Visibility keyword that makes a function or state variable accessible from outside the contract.

- **constructor:**  A special function that is executed only once when the contract is deployed. It's used to initialize the contract's state.

- **msg.sender:**  A global variable that represents the address that is calling the contract.

- **uint:**  An unsigned integer type. It's a shorthand for uint256, which is a 256-bit integer.

- **require:**  A function that checks if a condition is true. If not, it reverts the transaction.

- **pure:**  A function modifier that indicates the function does not read or modify the state.

- **view:**  A function modifier that indicates the function reads the state but does not modify it.

- **if, else:**  Conditional statements used to execute code based on certain conditions.

- **while, for:**  Loop constructs that allow code to be executed repeatedly based on a condition.

- **event:**  A keyword used to declare an event. Events are emitted by the contract and can be listened to by off-chain applications.

- **fallback:**  A special function that is called when the contract receives a transaction with no data, or when no other function matches the function selector.

- **payable:**  A modifier that allows a function to receive Ether.

- **receive:**  A special function that is called when the contract receives Ether with no data.

- **modifier:**  A keyword used to define reusable code that can be added to function definitions.

- **delete:**  A keyword that resets a variable to its default value.

- **this:**  A keyword that refers to the current contract instance.
