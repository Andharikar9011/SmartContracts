// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ERRORTypes{
    uint public val ;
    function RequireError(uint _a) external {
        require(_a>10," value less");
        val = _a;
    }
    function RevertError(uint _a) external {
        if (_a > 10){
             revert( "value grater than 10");
        }else{
            val = _a;
        }
       
    }

    function AssertError() external view {
        assert(val != 0);
    }
}