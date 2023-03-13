// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract LeapYear{
    function logic(uint a) external pure returns(bool b){
        if((a % 400 == 0) || (a % 100 !=0) && (a%4 ==0)){
            return true;
        } 
        else {
            return false;
        }
    }
}