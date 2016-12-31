#write your code here
def translate(word)
    vowel = ["a", "e", "i", "o", "u"]
    consonant = ("a".."z").to_a - vowel
    count = 0
    letter_arr = []
    result = []

    
    word_arr = word.downcase.split(" ")
    
    word_arr.each {|word| letter_arr << word.split("")}
    
    
    letter_arr.each do |w|
        
        w.each do |letter|
            count += 1 if consonant.include?(letter)
            next_letter = w.index(letter)+1
            count += 1 if letter =="q" && w[next_letter] == "u" 
            break if vowel.include?(letter)
        end
        
        postfix = w.shift(count).join("") + "ay"

        word = w.join("") + postfix
        
        count = 0
        
        result << word
    end

    result.join(" ")

end




