#write your code here
def add(n1,n2)
    n1+n2
end

def subtract(n1,n2)
    n1-n2
end

def sum(arr=[])
    return 0 if arr== []
    arr.inject do |memo, num|
        memo = memo+num
    end
end

def multiply (arr=[])
    return 0 if arr.include?(0)
    arr.inject do |memo, num|
        memo = memo*num
    end
end

def power(base,power)
    base**power
end

def factorial(num)
    return 0 if num == 0
   (1..num).inject {|memo,n| memo * n}
end
