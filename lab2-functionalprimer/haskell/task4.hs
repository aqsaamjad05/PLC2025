import System.Exit (exitSuccess)

ask :: String -> Int -> IO ()
ask prompt count = do
  -- Add 'count' number of '!' to the prompt
  let updatedPrompt = prompt ++ replicate count '!'
  putStrLn updatedPrompt
  line <- getLine
  if line == ""
    then ask prompt (count + 1) -- Repeat with increased count
  else if line == "quit"    
    then do
      putStrLn "quitting..."
      exitSuccess
  else putStrLn ("you said: " ++ reverse line)

main :: IO ()
main = ask "please say something" 0 -- Start with count = 0