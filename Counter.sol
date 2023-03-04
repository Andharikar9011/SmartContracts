// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Counter{
    uint256 count;

    function increment() external {
        count += 1;
    }

    function countvalue() external view returns(uint256) {
        return count;
    }
    
    function decrement() external {
        count -= 1;
    }

}