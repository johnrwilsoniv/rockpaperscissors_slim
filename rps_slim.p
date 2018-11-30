from random import randint
import time

time_start = time.time()
game_number = 0
tie = 0
player_win = 0
computer_win = 0

game_over = False
while game_over == False:
    
    #real player input
    #player = input("Rock (r), Paper (p), or Scissors (s) > ")
    
    #player always scissors
    player = "s"
    
    #computer fake player input
    #player_rand = randint(1,3)
    #if player_rand == 2:
    #    player = "r"
    #elif player_rand == 3:
    #    player = "p"
    #else: player = "s"
       
    if player == "r" or player == "p" or player == "s":
        
        #computer choosing r, p, or s
        computer_rand = randint(1,3)
        if computer_rand == 1:
            computer = "r"
        elif computer_rand == 2:
            computer = "p"
        else: computer = "s"
        
        #match counted and displayed
        game_number = game_number + 1
        print("Game " + str(game_number) + ": " + player + " vs " + computer)
        
        #player wins
        if player == "r" and computer == "s" or player == "p" and computer == "r" or player == "s" and computer == "p":
            player_win = player_win + 1
            print("You Won! Your Record is now " + str(player_win) + " - " + str(computer_win) + " - " + str(tie))
            if player_win == 10:
                game_over = True
        
        #computer wins
        elif player == "s" and computer == "r" or player == "r" and computer == "p" or player == "p" and computer == "s":
            computer_win = computer_win + 1
            print("You Lost! Your Record is now " + str(player_win) + " - " + str(computer_win) + " - " + str(tie))
            if computer_win == 10:
                game_over = True
        
        #tie    
        else:
            tie = tie + 1
            print("Tie! Your Record is now " + str(player_win) + " - " + str(computer_win) + " - " + str(tie))
    else: print("Please choose 'r', 'p', or 's'")
time.sleep(.01)
O = time.time() - time_start - .01
print("This match took " + str(round(O,5)) + " seconds.")
