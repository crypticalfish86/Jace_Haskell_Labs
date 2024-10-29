import System.IO
import Data.Char
import Text.Read

--task 1

askANumberToIncrement :: IO ()
askANumberToIncrement = do 
    putStr "Please input number: ";
    userInput <- getLine;
    let number = ((read userInput) :: Int);
    print (number + 1)


--task 2

askAValidNumberToIncrement :: IO ()
askAValidNumberToIncrement = do
    putStr "Please input a valid number: ";
    hFlush stdout;
    userInput <- getLine;
    case readMaybe userInput :: Maybe Int of
        Just number | number >= 0 -> print (number + 1)
        _ -> print "incorrect input"

--task 3

guessTheNumber :: Int -> IO ()
guessTheNumber x = do
    putStr "Guess number: ";
    hFlush stdout;
    userInput <- getLine
    case readMaybe userInput :: Maybe Int of
        Just number -> 
            if number == x 
                then putStrLn ("You Win!")
            else if number > x 
                then putStrLn ("go Lower!") >> guessTheNumber x
            else 
                putStrLn ("go Higher!") >> guessTheNumber x
        _ -> print "incorrect input" >> guessTheNumber x