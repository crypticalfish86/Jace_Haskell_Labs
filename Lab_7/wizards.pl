wizard(ron). %fact1
hasWand(harry). %fact2
quidditchPlayer(hermione). %fact3
quidditchPlayer(harry). %fact4
witch(hermione). %fact5

wizard(Y):- hasBroom(Y), hasWand(Y). %rule1
hasBroom(Y):- quidditchPlayer(Y). %rule2
