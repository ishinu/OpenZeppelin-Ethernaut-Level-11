# OpenZeppelin Ethernaut Level 11

`Elevator.sol` is a contract where our goal is to make `top` variable value `true`. 

`Building.sol` is an interface which is not defining body for `isLastFloor` function. 

Felt like something is wrong here.

First statement of `goTo()` makes an instance of `Building.sol` but with `msg.sender` and we know we can have a malicious contract call this function which can have anything in it's body. 

That's what we did, made `Attack.sol` and redefined the `isLastFloor` function in a way it do what will help us make `top` variable `true`.

`floor` and `_floor` inside `goTo()` may make you ponder why. Two different variables at two different checks. 

That's Ethernaut Level 11 for you.