// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

contract C {
    uint256 state;

    function expensive(uint8 times) internal {
        for (uint8 i = 0; i < times; i++) state = state + i;
    }

    function f(
        uint256 x,
        uint256 y,
        uint8 times
    ) public {
        if (x == 42 && y == 123) expensive(times);
        else state = 0;
    }

    function echidna_test() public returns (bool) {
        return true;
    }
}
