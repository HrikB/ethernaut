pragma solidity ^0.8.0;

contract KingDestruct {
    function destroy() external {
        address payable _addr = payable(0x0FC36EFAc49056781624D199B330a87F3557a3Df);
        selfdestruct(_addr);
    }

    receive() external payable {

    }
}