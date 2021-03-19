pragma solidity >=0.6.0 <0.8.0;

import "node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol"
contract Mytoken is ERC20 {


mapping(address => bool) public whitelist;
function registerWhitelist(address new_breeder) onlyOwner public returns(bool success) {
        require(msg.sender == owner);
        if (!whitelist[new_breeder]) {
            whitelist[new_breeder] = true;
            success = true; 
        }
    }

    function isWhitelisted(address _address) public view returns(bool) {
        return whitelist[_address];
    }

    
constructor (string memory name_, string memory symbol_) public {
        _name = name_;
        _symbol = symbol_;
        _decimals = 18;
    }
}