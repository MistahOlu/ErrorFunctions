// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract GlobalFunctions {

    function requireFunction(int input) public pure returns (int) {
        require(input>5, "must be greater than 5"); 
        return input;
    } 
    function assertFunction(int input) public pure returns (int) {
        assert (input>4); 
        return input;
    } 
    function revertFunction(int input) public pure returns (int) {
        if(input<6) revert("input must be greater than 5");
        return input;
    }
} 
