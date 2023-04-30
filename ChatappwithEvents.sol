// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Chatapp {
    event Chat(
        address indexed msgSender,
        address indexed msgReciever,
        string chat
    );

    function chat(address _reciever, string calldata _str) external {
        emit Chat(msg.sender, _reciever, _str);
    }
}
