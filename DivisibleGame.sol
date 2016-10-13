contract DivisibleGame {
    address owner;

struct Game {
  address player1;
  uint numberChosen1;
  uint amountWagered;
  bool isDivisible;
  address player2;
  uint numberChosen2;
  bool gameOver;
}


uint numGames = 0;

mapping (uint => Game) Games;

modifier gameOver(uint gameID)
{
    if (Games[gameID].gameOver == false) 
    _ 
    
}


  function newGame( uint numberChosen, bool _isDivisible) returns (uint gameID) 
  {
      if (numberChosen > 0 && numberChosen < 10) 
      {
        address _player1 = msg.sender;
        uint _amountBet = msg.value;
      
        gameID = numGames++;
        Games[gameID] = Game( _player1, numberChosen, _amountBet, _isDivisible,0,0,false);
        return gameID;
      }
  }


  function playGame(uint numberChosen, uint gameID) gameOver(gameID)
  {
     if (msg.value == Games[gameID].amountWagered && numberChosen > 0 && numberChosen < 10)
     {
         uint _amountBet = msg.value;
         address _player2 = msg.sender;
        
    
         Games[gameID].player2 = _player2;
         Games[gameID].amountWagered += _amountBet;
         Games[gameID].gameOver = true;
         Games[gameID].numberChosen2 = numberChosen;
        
        uint sumNumbers = Games[gameID].numberChosen1 + Games[gameID].numberChosen2;
        
        bool isDivisibleResult;
     
     if ( sumNumbers % 2 == 0) 
        isDivisibleResult = true;
     else 
        isDivisibleResult = false; 
     
     endGame(isDivisibleResult, gameID);
     }    
     
        
  } 
     
  function endGame(bool isDivisibleResult, uint gameID) private
  {
    address player1 = Games[gameID].player1;
    address player2 = Games[gameID].player2;
    uint amountWon = Games[gameID].amountWagered;
    bool betDivisible = Games[gameID].isDivisible;
    
      if (isDivisibleResult == true && betDivisible == true)
      {
          if (player1.send(amountWon)==false) throw;
      } else if (player2.send(amountWon)==false)throw;
      
  }
  
  function getGameDetails(uint gameID) gameOver(gameID) constant returns(address player1, uint numberChosen1, uint amountWagered, address player2, uint numberChosen2)
  {
     player1 = Games[gameID].player1;
     numberChosen1 = Games[gameID].numberChosen1;
     amountWagered = Games[gameID].amountWagered;
     player2 = Games[gameID].player2;
     numberChosen2 = Games[gameID].numberChosen2;
     
     
     return (player1, numberChosen1, amountWagered, player2, numberChosen2);
  }
  
  function getNumberOfGames() constant returns (uint _numGames)
  {
      _numGames = numGames;
      return;
  }
  
  function kill() {if (msg.sender == owner) selfdestruct(owner);}

  }
