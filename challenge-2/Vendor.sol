pragma solidity 0.8.20; //Do not change the solidity version as it negatively impacts submission grading
// SPDX-License-Identifier: MIT

// import "@openzeppelin/contracts/access/Ownable.sol";
import "./YourToken.sol";

contract Vendor {
    // event BuyTokens(address buyer, uint256 amountOfETH, uint256 amountOfTokens);

    YourToken public yourToken;

    constructor(address tokenAddress) {
        yourToken = YourToken(tokenAddress);
    }

    // ToDo: create a payable buyTokens() function:

    function buyTokens() public payable {
        uint256 ethAmount = msg.value;
        uint256 public constant tokensPerEth = 100;
        yourToken.transfer(msg.sender, tokensPerEth);
    }

    // ToDo: create a withdraw() function that lets the owner withdraw ETH

    // ToDo: create a sellTokens(uint256 _amount) function:
}

