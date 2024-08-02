//SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";

contract DeployFundMe is Script {
    function run() public returns (FundMe) {
        vm.startBroadcast();
        FundMe fundMe = new FundMe(0x4aDC67696bA383F43DD60A9e78F2C97Fbbfc7cb1);
        vm.stopBroadcast();
        return fundMe;
    }
}
