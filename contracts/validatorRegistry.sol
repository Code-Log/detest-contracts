// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.1;

import "./validator.sol";

contract ValidatorRegistry {

    uint256 immutable MINIMUM_STAKE;
    mapping(address => validator) registry;

    constructor(uint256 minStake) {

        MINIMUM_STAKE = minStake;

    }

    function registerValidator() external payable {

        require(msg.value >= MINIMUM_STAKE, "Payment is lower than minimum stake");

        registry[msg.sender] = new validator(msg.value);

    }

    function chooseValidator() external returns(validator) {



    }

}