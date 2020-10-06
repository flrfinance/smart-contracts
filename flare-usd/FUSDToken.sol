pragma solidity ^0.5.8;

import "./Context.sol";
import "./IERC20.sol";
import "./BaseERC20.sol";

contract FlareUSDToken is IERC20, ERC20Detailed {
    constructor(address gr) public ERC20Detailed("FLAREUSD TOKEN", "FUSD", 18){
        require(gr != address(0), "invalid gr");
        _mint(gr, 500 * 10 ** 18);
    }
}