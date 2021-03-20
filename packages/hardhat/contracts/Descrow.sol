pragma solidity >=0.6.0 <0.9.0;
import "hardhat/console.sol";

contract Descrow {

  // Escrow parameters set at deployment
  address public buyer; //BUYER
  address public seller; //SELLER
  uint public purchaseAmount = 0; //Total to be paid by BUYER



  // escrow state
  bool public initiated = false;
  bool public funded = false;
  bool public finalized = false;


   constructor(address _buyer, address _seller, uint _purchaseAmount) {
    buyer = _buyer; //address of the buyer
    seller = _seller; //address of the seller
    purchaseAmount = _purchaseAmount; //uint amount of ETH being paid to seller
  }

  function buyerDeposit() public payable {
    require(msg.sender == buyer, "Must be buyer");
    require(msg.value == purchaseAmount);
    funded = true;
    console.log("Contract is now funded");
  }






}