//SPDC-License-Identifier: MIT

// 1. Deploy mocks when we are on a local anvil chain
// 2. Keep track of contract address across different chains
// Base Sepolia ETH/USD price feed: 0x4aDC67696bA383F43DD60A9e78F2C97Fbbfc7cb1
// 

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";

contract HelperConfig {
    // If we are on a local anvil chain, deploy mocks
    // Otherwise grab the existing address from the live network
    NetworkConfig public activeNetworkConfig;

    struct NetworkConfig {
        address priceFeed; // ETH/USD price feed
    }

    constructor() {
        if (block.chainid == 11155111) {
            activeNetworkConfig
        } else {
            activeNetworkConfig = getBaseSepoliaEthConfig();
        }
    }

    function getBaseSepoliaEthConfig() public pure returns(NetworkConfig memory) {
        // price feed address
        // structs you can use brackets to denote type, you don't have to use them
        NetworkConfig memory baseSepoliaConfig = NetworkConfig({priceFeed: 0x4aDC67696bA383F43DD60A9e78F2C97Fbbfc7cb1});
        return baseSepoliaConfig;
    }

    function getAnvilEthConfig() public pure returns (NetworkConfig memory) {
        // price feed address
       // price feed address
    }
}