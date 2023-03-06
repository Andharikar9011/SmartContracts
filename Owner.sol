// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Contract_Owner{
    address public Owner;
    constructor(){
        Owner = msg.sender;
    }

    modifier _isOwner(){
        require(Owner == msg.sender,"You are not Owner of this Smart Contract.");
        _;
    }

    function modifyOwner(address _newOwner) external _isOwner{
        require(_newOwner != address(0),"Invalid User Address");
        Owner = _newOwner;
    }

    function OnlyOwner() external _isOwner{
        // code
    }

    function Everyone() external {
        // code
    }


}