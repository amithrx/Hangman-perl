## Hangman game in Perl

- In this, the program will read the words from the sampleword text file and randomly picked a word from this.
  If you want to add a new word to the list, just go to sampleword.txt and add that word in the new line format only.
- As you start the game, it will show the word in dashed format and as you guess a correct letter, it will automatically fill up in its correct location if any.
- Also, the program will display the guessed letters or words that you had done, so that it can help in further guessing.
- To make a guess either you can enter a single character or the whole word if you can able to find it at any moment.

- The rule of the game is if you guessed a letter and it is correct, then no lives will be deducted and that letter got filled up in all its correct locations,
  but if your guessed letter is incorrect the one life got deducted.
- If you guessed a word then if your guessed word matches the original word then you won the game, else if it doesn't match then 1 life will get deducted but it will not modify the word.
- If you guess already guessed letter or word then it will prompt out that already guessed and no life will be deducted.
- After each move, the program will tell you how many body parts are still left and visualize this via a Hangman design.
- User can enter anything that he/she wants whether it a character, number, word, or special character, if that is wrong 1 life will get deducted.
- At any step if you guessed the whole word, then the game is over.

-To run the program type the following command in your terminals:
  : perl Hangman.pl

 
