// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20, ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract SToken is ERC20, ERC20Burnable, Ownable {
    constructor(address ownerAddress, string memory _name, string memory _symbol) ERC20(_name, _symbol) Ownable(ownerAddress) {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
