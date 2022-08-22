//SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;


library maxOfArray{
    //@author: BlackAdam

    //@title: a library that gives the maximum number in the array of numbers passed into it

    function findMax(uint[] storage _arr) internal view returns(uint){
        //max is serving as a container to store the maximum number.
        //it's default value here is 0
        uint max;
        //i'm looping through the array of numbers passed into the function
        //i'm using the array length to set the limit of the loop
        for(uint i = 0; i <_arr.length; i++){   
        //i'm checking if the number at index i in the array is greater than the max we declared     
            if (_arr[i] > max){
        //if this conditionnis true
        //i assign the number to the max variable
                max = _arr[i];          
            }
        }
    //i return the number here
        return max;    
    }
}



//THis contract is used to test the libraray that i deployed
contract test{
    //i have an array of numbers stored in arr
    uint[] public arr = [5,6,7,8,9,7];

    // i declare a function called find
    function find() external view returns (uint){
    //im calling the libraray name here . the function i want to call in the library
    //and i passed the array(arr) that i declared into the function
        return maxOfArray.findMax(arr);

    }

}