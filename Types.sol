// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract valueTypes{
    uint public u = 103;
    bool public b = true;
    int public i = 123;
    int public mini = type(int).min;
    int public maxi = type(int).max;
    uint public umini = type(uint).min;
    uint public umaxi = type(uint).max;
    address public addr = 0x72eaE2C710e068cdf55a12cF69311d48fd76A066;
    bytes public byt = "aasda";
    bytes public byt1 = "1234";
    // defaults
     bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}