// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ErrorHandling {
    
    // Function to check if the input number is even and within a certain range
    function checkEvenNumber(uint _number) public pure {
        require(_number % 2 == 0, "Number must be even");
        
        if (_number > 100) {
            revert("Number must be 100 or less");
        }
        
        assert(_number != 42); // Assert that number must not be 42
    }

    // Function to validate that a given address is not the zero address and is different from a specific address
    function validateAddress(address _addr) public pure {
        require(_addr != address(0), "Address must not be the zero address");
        
        address specificAddr = 0x1234567890123456789012345678901234567890;
        if (_addr == specificAddr) {
            revert("Address must not be the specific address");
        }
        
        assert(_addr != 0x1111111111111111111111111111111111111111); // Assert that address must not be a specific invalid address
    }

    // Function to verify that the difference of two numbers is within a valid range
    function verifyDifference(int _a, int _b) public pure returns (int) {
        int diff = _a - _b;
        require(diff >= -50, "Difference must be greater than or equal to -50");
        
        if (diff > 50) {
            revert("Difference must be 50 or less");
        }
        
        assert(diff != 0); // Assert that difference must not be exactly zero
        
        return diff;
    }
}
