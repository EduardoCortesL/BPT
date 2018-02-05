//Started February 5th
//Exploring different functions from different codes repos (check licensing before publishing)
//only doing one type GA
//symple ticket price, buy, and reservation with additionalInfo

pragma solidity ^0.4.15;

contract FestivalTickets {

  string public name = "Hyper Glow"; // name of the festival
  string public additionalInfo = "123 Ave. Always Alive, New York, NY. Doors Open at 5:00.";
  address public eventOwner = "0x16d2142DC1c046352cfb007d179dED0d3215d597";


  mapping(address => uint256)public ticketOwner;
  mapping(uint256 => uint256)public ticketPrice; // ticekt price of a GA ticket
  mapping(uint256 => uint256)public ticketSupply; //total GA supply ticket
  mapping(uint256 => uint256)public timeOfreservation; // what type they did the reservation
  mapping(uint256 => string)public additionalInfo; // Time and location of the event
  mapping(uint256 => uint256)public reservations; //Reservation of the ticket

  event TicketAllocation (uint256 _ticketID, address _buyer, string _infoString);
  event RedeemTicket (uint256 _ticketID, address _holder,string _infoString);

  function tickets(uint256 ticketID, uint256 ticketSupply, address ticketOwner) {
    for(uint256 i=0; i<ticketSupply; i++)

    ticketSupply = ticketSupply;
    owner = eventOwner;
  }
  
}
