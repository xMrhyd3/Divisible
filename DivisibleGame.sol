contract DivisibleGame {
    address public owner;
}


struct Game {
  address public player1;
  uint256 public numberChosen1;
  uint256 public amountWagered;
  bool public isDivisible;
  address public player2;
  uint256 numberChosen2;
}

uint256 numGames;

mapping (uint => Game) Games;


  function newGame(address player1, uint amountBet, uint numberChosen, bool isDivisible) returns (uint gameID) 
  {
      if (msg.value >= 100 finney && numberChosen > 0 && numberChosen < 10) {
      
      uint amount = msg.value;
      
      gameID = numGames++;
      games[gameID] = Game(player1, numberChosen, amount, isDivisible,0,0);
  }
     
     
  function playGame(address player2, uint amountBet, uint numberChosen2, uint gameID)
  {
      Game = games[gameID];
      
      if (msg.value == Game.amountBet && numberChosen > 0 && numberChosen < 10) 
      
        if ( Game.isDivisible == True && (numberChosen1 + numberChosen2) % 2 == 0)
              msg.sender.send(amountBet)
  }   
      
      
  
  
  
modifier onlyOwner { if(msg.sender == contractOwner) _; }

event GameEnded (address Winner, uint256 TotalBet)
        
     
     
    
  
