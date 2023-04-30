// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Structs{

 struct Todo {
        string text;
        bool completed;
    }
    mapping(address=>Todo[]) public ownerTodos;

    function cerateTodo(address _add, string calldata _todo) external {
        ownerTodos[_add].push(Todo(_todo,false));
    }

    function getTodos(address _add) view public returns(Todo[] memory ){
        if(ownerTodos[_add].length == 0){
            revert("Owner does not have Todos");
        }
        Todo[] memory temp = ownerTodos[_add];
        return temp;
    }

    function markUnmarkTodo(address _add, string calldata _todo) external {
        // require(ownerTodos[_add],"Owner does not have Todos");
        if(ownerTodos[_add].length == 0){
            revert("Owner does not have Todos");
        }
        // Todo[] storage temp = ownerTodos[_add];
        for(uint i=0;i<ownerTodos[_add].length;i++){
            if(keccak256(abi.encodePacked(ownerTodos[_add][i].text)) == keccak256(abi.encodePacked(_todo))){
               ownerTodos[_add][i].completed = !ownerTodos[_add][i].completed ;
            }
        }
    }

    function deleteTodo(address _add, string calldata _todo)  external {
        if(ownerTodos[_add].length == 0){
            revert("Owner does not have Todos");
        }
        uint index;
        // Todo[] storage temp = ownerTodos[_add];
        for(uint i=0;i<ownerTodos[_add].length;i++){
            if(keccak256(abi.encodePacked(ownerTodos[_add][i].text)) == keccak256(abi.encodePacked(_todo))){
              index = i;
            }
        }
        ownerTodos[_add][index] = ownerTodos[_add][ownerTodos[_add].length-1];
        ownerTodos[_add].pop();
    }

}