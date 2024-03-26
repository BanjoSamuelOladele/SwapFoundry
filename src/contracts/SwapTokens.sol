// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;
import {console} from "lib/forge-std/src/console.sol";

import "@openzeppelin/contracts";
import {AggregatorV3Interface} from "lib/chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";


contract SwapTokens {
    AggregatorV3Interface internal aggregateV3Weth;
    AggregatorV3Interface internal aggregateV3Dai;
    AggregatorV3Interface internal aggregateV3Link;
    constructor(address weth, address dai, address link){
        aggregateV3Dai = AggregatorV3Interface(dai);
        aggregateV3Link = AggregatorV3Interface(link);
        aggregateV3Weth = AggregatorV3Interface(weth);
    }

    function convertEthToDai() external{
        (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound) =
        AggregatorV3Interface(aggregateV3Dai).latestRoundData();
        console.log("round is ", roundId);
//        console.log("answer is :: ", answer);
        console.log("started is :: ",startedAt);
        console.log("updated is :: ",updatedAt);
        console.log("answeredInRound is :: ",answeredInRound);
    }
}
