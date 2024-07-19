// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ErrorHandling {
    function trial(uint _value) public pure {
        require(_value > 15, "Input must be greater than 15");
        
        if (_value > 30) {
            revert("Input must be less than 30");
        }
        
        assert(_value == 20); // Assert that value must be exactly 20
    }
}
