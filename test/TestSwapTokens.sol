// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Test} from "lib/forge-std/src/Test.sol";
import "../src/contracts/SwapTokens.sol";

contract TestSwapTokens is Test{
    SwapTokens internal swapTokens;

    function setUp() external{
        swapTokens = new SwapTokens(
                                    0x694AA1769357215DE4FAC081bf1f309aDC325306,
                                    0x14866185B1962B63C3Ea9E03Bc1da838bab34C19,
                                    0xc59E3633BAAC79493d908e63626716e204A45EdF
        );
    }

    function testRunIt() external{
        swapTokens.convertEthToDai();
    }
}
