class Timer
  #write your code here
    
    attr_accessor :seconds
    attr_reader :hours, :minutes
    
    def initialize 
        @seconds = 0
        @hours = 0
        @minutes = 0
    end
    
    def time_string
        until @seconds < 60
            @seconds -= 60
            @minutes += 1
        end
        
        until @minutes < 60
            @minutes -= 60
            @hours += 1
        end
        return "#{@hours.to_s.rjust(2,"0")}:#{@minutes.to_s.rjust(2,"0")}:#{@seconds.to_s.rjust(2,"0")}"
    end
end

timer = Timer.new
puts timer.time_string