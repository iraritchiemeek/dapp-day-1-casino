pragma solidity 0.8.3;

contract Casino {
	address public owner;

	function Casino() public {
		owner = msg.sender;
	}

	function kill() public {
		if(msg.sender == owner) selfdestruct(owner); 
	}
}