'''
The substrings() method looks for words that are in the list equal to the
word. Useful for counting the words that appeared in the phrase.
'''
def substrings(word, wordList)
  # Default hashmap that contains the value zero to increment when word found
  result = Hash.new(0)

  # Goes through each word into an array when examining
  userWords = word.split(" ")

  # Goes through each word in the list to check if in the user's input
  wordList.each do |phrase|

    # Goes through each word in the user's input to compare with the word list
    userWords.each do |analyze|

      # Counts the amount of times a word in the list appears in the input
      if analyze.downcase.include?(phrase.downcase)
        result[phrase] += 1
      end

    end
    
  end

  return result
end