// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.1;

contract validator {

    uint256 public immutable m_Stake;
    uint public immutable m_StakeBlockNum;

    constructor(uint256 stake) {

        m_Stake = stake;
        m_StakeBlockNum = block.number;

    }

}