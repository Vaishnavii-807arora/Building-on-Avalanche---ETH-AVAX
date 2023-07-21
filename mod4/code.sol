// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract FancyToken is ERC20, Ownable {
    uint256 private constant TIME_LOCK_PERIOD = 1 days;
    mapping(address => uint256) private _lockedUntil;
    uint256 public conversionRate; // Conversion rate from tokens to Ether set by the owner

    constructor() ERC20("FancyToken", "FT") {
        _mint(msg.sender, 1000 * 10 ** decimals());
        conversionRate = 100; // Initial conversion rate (1 token = 100 Wei)
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function transferWithTimelock(address to, uint256 amount) public {
        require(_lockedUntil[msg.sender] <= block.timestamp, "Timelock: Tokens are still locked");
        _transfer(msg.sender, to, amount);
        _lockedUntil[to] = block.timestamp + TIME_LOCK_PERIOD;
    }

    function checkTimelock(address account) public view returns (uint256) {
        return _lockedUntil[account];
    }

        function redeem() public {
                _burn(msg.sender, 100);
            }

    // Fallback function to receive Ether (used for token redemption)
    receive() external payable {}
}
