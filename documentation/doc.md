My contract utilizes two imports:
```solidity
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
```

The first import is the `ERC20` contract, which is the base contract for the `DrogeToken42` contract. It contains all the necessary functions and variables to create an ERC20 token. The second import is the `ERC20Permit` contract, which is an extension of the `ERC20` contract. It adds the permit function, which allows users to approve the contract without having to send a transaction to the blockchain.
> The `ERC20Permit` extension is not necessary for the `DrogeToken42` contract, but it's a nice feature to have to spend less gas when approving the contract.

Let me elaborate on the key methods of the `ERC20` contract:
```solidity
constructor(string memory name, string memory symbol)
Initializes the token with a name and symbol.

function totalSupply() public view returns (uint256)
Returns the total token supply.

function balanceOf(address account) public view returns (uint256)
Returns the account balance of an account with its address.

function transfer(address recipient, uint256 amount) public returns (bool)
Transfers amount of tokens to recipient.
```
> All these functions call the `_update` function, which updates the account balances and the total supply of the token.

> The `ERC20` contract also contains the `approve`, `allowance`, and `transferFrom` functions, but they are not used in the `DrogeToken42` contract.

They are also other `internal` functions such as `_mint` and `_burn` that are used to create and destroy tokens respectively.
> As you can see we use the `_mint` function to create the total supply of 42000 tokens and assign them to the deployer of the contract; `_burn` is not used.
