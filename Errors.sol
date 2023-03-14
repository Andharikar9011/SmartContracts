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
             revert Myerror(msg.sender,"The value is less than 10");
        }else{
            val = _a;
        }
       
    }

    error Myerror(address caller, string a  );

    function AssertError() external view {
        assert(val != 0);
    }

    error InsufficientBalance(address a ,uint balance, uint withdrawAmount);

    function Withdraw(uint withdrawAmount) public view {
        uint balance = address(msg.sender).balance;
        if( balance < withdrawAmount){
            revert InsufficientBalance(msg.sender,balance , withdrawAmount);
        }
        
    }
}