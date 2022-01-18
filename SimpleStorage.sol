// SPDX-Licence-Identifier: MIT
pragma solidity ^0.6.0;

contract SimpleStorage {
    //this will get initialized to zero
    uint256 public favoriteNumber;
    // bool favorite bool = true;
    // string favoriteString = "String";
    // int256 favoriteInt = -5;
    // address favoriteAddress = 0xEB60e1104109940f1e2Ca3a27d98af9817EBa516;
    // bytes32 favoriteBytes = "cat";
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    People public person = People({favoriteNumber:2,name:"Patrick"});

    function store(uint256 _favoriteNumber)public {
        favoriteNumber = _favoriteNumber;
        
    }
    //view we want to read the state of the blockchain
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name,uint256 _favoriteNumber)public {
        people.push(People({favoriteNumber:_favoriteNumber,name:_name}));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
