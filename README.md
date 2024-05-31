# GlobalFunctions Smart Contract

This project is a simple smart contract written in Solidity, designed to demonstrate the use of global functions `require`, `assert`, and `revert`. These functions are essential for error handling and ensuring the contract's state integrity in Ethereum smart contracts.

## Overview

The `GlobalFunctions` contract contains three functions: `requireFunction`, `assertFunction`, and `revertFunction`. Each function takes an integer as input and checks if the input meets a specific condition using one of the global functions.

## Functions

1. **requireFunction(int input)**: 
   - Ensures that the input is greater than 5.
   - If the condition is not met, it throws an error with the message "must be greater than 5".
   - Returns the input if the condition is met.

   ```solidity
   function requireFunction(int input) public pure returns (int) {
       require(input > 5, "must be greater than 5"); 
       return input;
   }
   ```

2. **assertFunction(int input)**: 
   - Checks if the input is greater than 4.
   - Uses the `assert` function, which should only be used to test for internal errors and invariants.
   - Returns the input if the condition is met.

   ```solidity
   function assertFunction(int input) public pure returns (int) {
       assert (input > 4); 
       return input;
   }
   ```

3. **revertFunction(int input)**: 
   - Ensures that the input is greater than 5.
   - If the condition is not met, it reverts the transaction with the message "input must be greater than 5".
   - Returns the input if the condition is met.

   ```solidity
   function revertFunction(int input) public pure returns (int) {
       if (input < 6) revert("input must be greater than 5");
       return input;
   }
   ```

## Purpose

The purpose of this smart contract is to:

- Demonstrate the use of Solidity's global functions for error handling.
- Provide examples of `require`, `assert`, and `revert` functions in practical scenarios.
- Help developers understand the differences and appropriate use cases for each function.
