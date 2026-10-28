dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
    phrase_split = word.downcase.split
    hashed = Hash.new(0)
    phrase_split.each do |phraseword|
        dictionary.each do |dictionaryword|
            if phraseword.include?(dictionaryword)
                hashed[dictionaryword] += 1    
            end
        end
    end
    hashed
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)

