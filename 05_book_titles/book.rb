class Book
# write your code here
    
    attr_accessor :title
    
    
    def title
        excepts = ["the", "a", "an", "and", "or", "but", "at", "in", "on", "of"]
        
        title_arr = @title.split(" ")
 
        result = title_arr.map do |word| 
            excepts.any? {|w| w == word} ? word : word.capitalize
        end
        
        result[0] = title_arr[0].capitalize
        
        return result.join(" ")
    end
end
