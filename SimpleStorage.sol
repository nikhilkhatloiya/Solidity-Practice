// SPDX-License-Identifier: MIT

//EVM : Etherium Virtual Machine

//Ethereum, Polygon, Arbitrum, Optimism, Zksync


pragma solidity ^0.8.18;  //stating our version

contract SimpleStorage{

    uint256 public numberUint; //initialise new value

    uint256[] listOfArrays;

    struct Person{
        uint256 favouriteNumber;
        string name;
    }

    Person public Tom = Person({favouriteNumber: 12, name: "Nikhil"});

    Person[] public listOfPeople;

    mapping(uint256 => string) public numberToName;

    function store(uint256 _numberUnit) public virtual{
        numberUint = _numberUnit;
    }

    function retrieve() public view returns(uint256){
        return numberUint;
    }

    function addPerson(uint256 num, string memory name) public
    {
        listOfPeople.push(Person(num, name));
        numberToName[num] = name;
    }
    
    //0xd9145CCE52D386f254917e481eB44e9943F39138

}