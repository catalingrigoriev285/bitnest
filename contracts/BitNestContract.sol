// SPDX-License-Identifier: LICENSED
pragma solidity ^0.8.0;

// contract BitNestContract {
//     string public name = "BitNest";
//     string public symbol = "BN";
//     uint8 public decimals = 18;
//     uint256 public totalSupply;

//     mapping (address => uint256) public balanceOf;

//     event Transfer(address indexed from, address indexed to, uint256 value);

//     constructor(uint256 _initialSupply) {
//         totalSupply = _initialSupply * 10 ** uint256(decimals);
//         balanceOf[msg.sender] = _initialSupply;
//     }

//     function transfer(address _to, uint256 _value) public returns (bool success) {
//         require(balanceOf[msg.sender] >= _value, "Insufficient balance");
//         balanceOf[msg.sender] -= _value;
//         balanceOf[_to] += _value;
//         emit Transfer(msg.sender, _to, _value);
//         return true;
//     }
// }

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BitNestContract is ERC20 {
    constructor(uint256 initialSupply) ERC20("BitNest", "BN") {
        _mint(msg.sender, initialSupply * 10 ** uint256(decimals()));
    }
}