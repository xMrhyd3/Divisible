contract DivisibleGame {
  address public playerA;
  address public playerB;
  uint256 public numberChosenA;
  uint256 public numberChosenB;
  uint256 public amountWagered
  
  function createGame(
    uint256 numberPickedA,
    uint256 amountBet,
    address addressPlayerA
  ) {
      playerA = addressPlayerA;
      numberPickedA = numberChosenA;
      amountWagered = amountBet;
     }
     
   function playGame(
     uint256 numberPickedB,
     uint256 amountBet,
     address addressPlayerB,
   ) {
        playerB = addressPlayerB;
        numberChosenB = numberPickedB;
        
        
     
     
    
  
