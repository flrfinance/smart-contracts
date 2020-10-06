pragma solidity ^0.5.8;

import "./Context.sol";
import "./IERC20.sol";
import "./BaseERC20.sol";

contract YieldFinToken is IERC20, ERC20Detailed {
    constructor(address gr) public ERC20Detailed("YIELDFIN TOKEN", "YFIN", 18){
        require(gr != address(0), "invalid gr");
        _mint(gr, 11000 * 10 ** 18);
    }
}