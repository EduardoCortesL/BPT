pragma solidity ^0.4.11;

contract Tickets {

  function name() constant returns (string name){
    return "Ultra Miamia 2018 Tickets";
  }

  function symbol() constant returns (string symbol){
    return "UMF";
  }

  //initial supply of the ticketSupply
  uint256 private totalSupply = 50;

  function totalSupply() constant returns (uint256 supply){
    return totalSupply;
  }

  mapping(address => uint) private balances;

  function balancesOf(address _owner) constant returns(uint balance)
  {
    return balances[_owner];
  }

  mapping (uint256 => address) private tokenOwners;
  mapping (uint256 => bool)private tokenExists;

  function ownerOf(uint256 _ticketId)
  constant returns (address owner) {
    require(tokenExists[_ticketId]);

    return tokenOwners[_ticketId];
  }

  mapping(address => mapping (address => uint256)) allowed;

  function approve (address _to, uint256 _ticketId){
    require(msg.sender == ownerOf)_ticketId));
    require(msg.sender != _to);

    allowed[msg.sender][_to] = _ticketId;
    Approval(msg.sender, _to, _ticketId);
  }

  function takeOwnership(uint256 _ticketId){
    require(ticketExists[_tokenId]);

    address oldOwner = ownerOf(_ticketId);
    address newOwner = msg.sender; 
  }


}
