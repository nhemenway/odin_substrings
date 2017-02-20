dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings words, dictionary
  words_array = words.split(' ');
  substrings_found = Hash.new(0)

  words_array.each do |word|
    dictionary.each do |substring|
      if word.downcase.include? substring
        substrings_found[substring] += 1
      end
    end
  end 

  puts substrings_found
end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)