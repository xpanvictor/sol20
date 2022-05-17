// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {

    
    struct Person {
        string name;
        int256 favNum;
    }

    Person[] public people;
    mapping(string => int256) public nameToNum;

    function addPerson(string memory _name, int256 _favNum) public{
        people.push(Person({
            name: _name,
            favNum: _favNum
        }));
        nameToNum[_name] = _favNum;

    }

}
