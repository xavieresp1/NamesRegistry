pragma solidity ^0.8.0;

contract NameRegistry {
    //changed this mapping from public to private so that it can only be accessed through the contract functions.
    mapping(address => string) private names;

    function register(string memory _name) public {
        names[msg.sender] = _name;
    }

    function retrieve(address _address) public view returns (string memory) {
        return names[_address];
    }
}
