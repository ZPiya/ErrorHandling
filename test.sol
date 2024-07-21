// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ErrorHandling {
    // Function to check if a value is within a specific range
    function checkValue(uint _value) public pure {
        require(_value > 15, "Input must be greater than 15");
        
        if (_value > 30) {
            revert("Input must be less than 30");
        }
        
        assert(_value == 20); // Assert that value must be exactly 20
    }

    // Function to check if a string length is within limits
    function checkStringLength(string memory _input) public pure returns (string memory) {
        uint length = bytes(_input).length;
        require(length > 5, "String must be longer than 5 characters");
        
        if (length > 20) {
            revert("String must be shorter than 20 characters");
        }
        
        assert(length != 10); // Assert that length must not be exactly 10
        return _input;
    }

    // Function to verify the sum of two numbers within a range
    function verifySum(uint _a, uint _b) public pure returns (uint) {
        uint sum = _a + _b;
        require(sum > 10, "Sum must be greater than 10");
        
        if (sum > 50) {
            revert("Sum must be less than or equal to 50");
        }
        
        assert(sum != 30); // Assert that sum must not be exactly 30
        return sum;
    }
}
