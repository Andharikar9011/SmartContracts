// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract CheckPrime{
    function checkprime(uint a) external pure returns(bool){
        if(a < 2){
            return false;
        }else{
            for(uint i = 2; i < a; i++){
                if (a % i == 0){
                    return false;
                }
            }
            return true;
        }
    }

    function NumSumTill(uint a) external pure returns(uint){
        uint j = 0;
        uint k = 0;
        while(k <= a){
            j = j + k;
            k++;
        }
        return j;
    }
}