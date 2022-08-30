// But, maybe we're okay if we use a more new version of solidity than 0.8.7
// to tell our code that we're okay with a more new version, we can put a little caret here. 
// Hey, any version of 0.8.7 and above is okay for this contract.  
// Use pragma solidity ^0.8.7;

// Just 0.8.7, use pragma solidity 0.8.7;

// Or with range, pragma solidity >=0.8.7 <0.9.0;
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

// To start defining our contract, we're gonna go ahead and write the word contract
// This tell solidity that the next pieces of code is going to be a contract.
contract SimpleStorage {
    // basic types: boolean, uint, int, address, bytes
    // uint256 favoriteNumber;

    // public keyword made it visible after deploying
    uint256 public favoriteNumber;
    // People public person = People({
    //     favoriteNumber: 2210,
    //     name: "Ngoc Thieu"
    // });

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;

    mapping(string => uint256) public nameToFavoriteNumber;

    // public variable implicity get assigned a function that returns its value
    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
        
        // example about gas, if we add
        // favoriteNumber = favoriteNumber + 1
        // we will see that doing more things, this store function is now more computationally expensive
    
        // retrieve();
    }

    // view, pure
    // view and pure functions, when called alone, don't spend gas
    // if we do have a function that calls retrieve, if there's a function
    // that is updating state that calls a view or a pure function,
    // that's the only time it'll cost gas
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // TypeError: Data location must be "storage", "memory" or "calldata" for variable, 
        // but none was given
        // if we use this: People newPerson = People({ favoriteNumber: _favoriteNumber, name: _name});
        People memory newPerson = People({ favoriteNumber: _favoriteNumber, name: _name});
        people.push(newPerson);
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    // ----------------------------------------------------------------------------------------------------------------------------------
    // calldata, memory, storage

    // function addPerson(string memory _name, uint256 _favoriteNumber) public {
    // why we put memory before _name but not _favoriteNumber???
    // try it out, we will have TypeError: Data location can only be specified for array, struct or mapping types, but "memory" was given.
    
    // array, struct, mapping types are considered special types
    // solidity knows int256 is going to live just in memory
    // however, it's not sure what a string is going to be, strings are actually kind of complicated
    // behind the scene, string is actually an array of bytes.
    // ----------------------------------------------------------------------------------------------------------------------------------
}