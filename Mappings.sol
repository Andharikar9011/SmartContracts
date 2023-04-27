// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Mappings{
 
 mapping(address => uint) public balances;
 
 function set(address myAdd, uint balance) external {
     balances[myAdd] = balance;
 }

 function get(address myAdd) view external returns(uint balance){
     return balances[myAdd];
 }

 function increment(address myAdd, uint balance) external {
     balances[myAdd] += balance;
 }
 
 function decrement(address myAdd, uint balance) external {
     balances[myAdd] -= balance;
 }

 function deleteBalance(address myAdd) external {
    delete balances[myAdd];
 }

}

contract NestedMappings{

    mapping(address => mapping(address => bool)) public isFriend;


    function setFriends(address myAdd, address friendAdd) external {
        isFriend[myAdd][friendAdd] = true;
    }

   function unFriends(address myAdd, address friendAdd) external {
        isFriend[myAdd][friendAdd] = false;
    }

    function twoWayFriendship(address myAdd, address friendAdd) view external returns(bool) {
        require(isFriend[myAdd][friendAdd] == true && isFriend[friendAdd][myAdd]== true,"Friendship is not 2 way.. :( ");
        return true;
    }

    function deleteFriend(address myAdd, address friendAdd) external{
        delete isFriend[myAdd][friendAdd];
    }


}