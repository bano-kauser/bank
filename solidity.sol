pragma solidity ^0.8.6;

contract Bank {

    mapping(address => uint)balance;
    function addBalance(uint _toAdd)public returns(uint){
        balance[msg.sender] += _toAdd;
        return balance[msg.sender];

    }

    function getBalance()public view returns(uint){
        return balance[msg.sender];

    }
    function transfer(address recipient, uint amount)public{
        require(balance[msg.sender] >= amount,"you dont have enough balance to send")
           require(msg.sender!= recipient ,"you are sender and receiver both so its not poile")
        balance[msg.sender] -= amount;
        balance[recipient] += amount;

    }
}