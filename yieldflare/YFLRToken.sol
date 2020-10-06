pragma solidity ^0.5.8;

import "./Context.sol";
import "./IERC20.sol";
import "./BaseERC20.sol";

contract YieldFlareToken is IERC20, ERC20Detailed {
    constructor(address gr) public ERC20Detailed("YIELDFLARE TOKEN", "YFLR", 18){
        require(gr != address(0), "invalid gr");
        _mint(gr, 110000000 * 10 ** 18);
    }
}