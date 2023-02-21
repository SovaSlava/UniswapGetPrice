// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;
import "forge-std/Test.sol";
import "../src/GetPriceUniV2.sol";

contract UNITEST is Test {
    GetPriceUniV2 getPrice;
    address dai = 0x6B175474E89094C44Da98b954EedeAC495271d0F;
    address wbtc = 0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599;
    address link = 0x514910771AF9Ca656af840dff83E8264EcF986CA;

    function setUp() public {
        getPrice = new GetPriceUniV2();
    }

    function test_getPrice() public {
        (uint amountOut, uint quoute) = getPrice.currentPrice(1e18, dai, link);

        console.log("amount out - ", amountOut);
        console.log("quote - ", quoute);
    }
}
