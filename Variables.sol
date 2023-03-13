// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Variables{
    // State Variables
    uint public i;
    bool public b;
    uint public a;
    address public myaddress;

    function foo() external{
        uint x = 123;
        bool f = true;
        // you can edit state variables here
        i = x;
        b = f;
        
        // global variables
        myaddress = msg.sender;
        a  = block.number;

    }
}