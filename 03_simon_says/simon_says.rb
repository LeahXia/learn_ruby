#write your code here
def echo(word)
    word
end

def shout(word)
    word.upcase
end

def repeat(word, time=2)
    repeat = []
    time.times {|t| repeat << word}
    repeat.join(" ")
end

def start_of_word(word,num)
    word[0..num-1]
end

def first_word(word)
    word.split(" ").first
end

def titleize(word)
    arr = word.split(" ")
    little_words = ["a", "an", "the", "at", "by", "for", "in", "of", "on", "to", "up", "over", "and", "as", "but", "or", "nor"]
        
    arr.map! do |word| 
      
      little_words.include?(word) ? word : word.capitalize 

    end
    
    arr[0] = arr[0].capitalize if little_words.include?(arr[0])
    
    puts arr[0]
    
    arr.join(" ")
    
end

titleize("the bridge over the river kwai")