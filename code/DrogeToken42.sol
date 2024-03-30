// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract MyToken is ERC20, ERC20Permit
{
    constructor() ERC20("DrogeToken42", "DT42") ERC20Permit("DrogeToken42")
    {
        uint256 initialSupply = 42000 * 10**uint256(decimals()); // Set the supply to 42000 tokens
        _mint(msg.sender, initialSupply); // Mint the initial supply to the contract deployer
    }
}
