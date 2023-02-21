// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./UniswapV2Library.sol";

contract GetPriceUniV2 {
    address uniFactory = 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f;

    function currentPrice(
        uint amountA,
        address tokenA,
        address tokenB
    ) external view returns (uint amountOut, uint quote) {
        (uint reserveA, uint reserveB) = UniswapV2Library.getReserves(
            uniFactory,
            tokenA,
            tokenB
        );

        amountOut = UniswapV2Library.getAmountOut(amountA, reserveA, reserveB);
        quote = UniswapV2Library.quote(amountA, reserveA, reserveB);
    }
}
