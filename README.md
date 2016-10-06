# Divisible
Divisible By 2


Summary:  A user sends in an amount of Ether along with a number from 1-10 to the Parent contract (maybe include 0 and this would allow a third option of calling 'bluff').  This information is passed along to a Child contract that the Parent creates.  Users browsing the site can then interact with one of these Child contracts by submitting their number and an amount of Ether that matches what was sent by the creator of the contract.  The two numbers are added together and if the sum is divisible by 2, the creator receives all Ether (or all minus transaction fee 2%?) from the child contract.    

Other options could include adding a 'Tip' amount to the contract so users decide what they will pay to use the service.

Questions to be answered:

1.  Is the number stored on the site and once the 2nd number is given, both are sent to the Child contract?
2.  Is the first number sent to the contract and held their until someone sends the 2nd number?


Functionality:
  > User
      -Create Bet
        -Send number
        -Send amount
      -Cancel Bet
        -Receive original amount sent
      -Make Bet
        -Send number
        -Send amount
