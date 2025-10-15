// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;  //stating our version

import {SimpleStorage} from "/SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{

    function sayHello() public pure returns (string memory){
        return "Hello";
    }

    //over ride
    //virtual over ride

    function store(uint256 _newNumber) public override{
        numberUint = _newNumber + 5;
    }

}

