// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.1;

contract ValidatorRegistry {

    struct validator {
        address payable id;
        uint stakeBlockNo;
        uint256 stake;
    }
    
    uint256 public immutable MINIMUM_STAKE;
    mapping(address => validator) public registry;

    constructor(uint256 minStake) {

        MINIMUM_STAKE = minStake * (10 ** 18);

    }

    function registerValidator() external payable {

        require(registry[msg.sender].stake == 0, "Validator is already registered");
        require(msg.value >= MINIMUM_STAKE, "Payment is lower than minimum stake");
        registry[msg.sender] = validator(payable(msg.sender), block.number, msg.value);

    }

}