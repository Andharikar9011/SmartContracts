// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Array{
    uint[] public nums;
    uint[3] public numsfixed = [4,5,6];


    function getlength() view  external returns(uint l){
        return nums.length;
    }

    function pushdata(uint i)  external {
        nums.push(i);
    }

    function getdata(uint i) view external returns(uint d) {
        return nums[i];
    }

    function removelast()  external  {   
        nums.pop();
    }

    function removeAtIndex(uint i)  external {
        delete nums[i];
    }

    function subsituteAtIndex(uint i , uint val) external{
        nums[i] = val;
    }

}

contract ArrayDataRemoval{
    uint[] public arry;

    function pushdata() external {
        arry = [1,2,3,4,5];
    }

     function getlength() view  external returns(uint[] memory l){
        return arry;
    }

    function removeByShiftingWholeArray(uint index) external {
        require(index < arry.length,"Index out of bound");
        for(uint i = index; i < arry.length - 1; i++){
            arry[i] = arry[i+1];
        }
        arry.pop();
    }

    function removeByShiftingSingleArray(uint index) external {
        require(index < arry.length,"Index out of bound");
        arry[index] = arry[arry.length -1];
        arry.pop();
    }
}