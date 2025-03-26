// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import { SToken } from "./SToken.sol";

contract LendingBorrowing {
    address public sTokenContract;

    constructor() {
        sTokenContract = address(new SToken(address(this)));
    }

    function depositETH();

    function depositUSDC();

    // to burn token from frontend the approval for spending
    function withdrawETH();

    // to burn token from frontend the approval for spending
    function withdrawUSDC();

    // add fallback and recieve function to accept eth and usdc in the end
}

