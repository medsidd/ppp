// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleBank {
    uint balance;

    // Deposit function, increase balance by amount
    function deposit(uint amt) public returns(uint) {
        balance += amt;
        return 1;
    }

    // Withdraw function, decrease balance by amount
    function withdraw(uint amt) public returns(uint) {
        if (amt > balance) {
            return 0;
        }

        balance -= amt;
        return 1;
    }

    // Function to display balance
    function showBalance() view public returns(uint) {
        return balance;
    }
}
