x = 'pablito clavo un clavito'
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "pablito", "clavito"]



def substrings(text, dictionary)
    result = Hash.new(0)
    text = text.downcase

    dictionary.each do |word|
        matches = text.scan(word).length
        result[word] = matches if matches != 0
    end
    result
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)