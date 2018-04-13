def persistence(num)
    p = 0 # persistence
    nums = [] # Array of integers
    length = num.to_s.length # length is number of digits in num
    
    while length > 1
        digits = num.to_s # Digits is num in string form
                
        # Turn num into an array of integers
        index = 0
        while index < digits.length
            nums << digits[index].to_i
            index += 1
        end # while index < digits.length
        
        # multiply individual digits that make up num
        answer = 1
        nums.each do |num|
            answer *= num
        end # nums.each do |num|
                            
        num = answer # num is final product from above loop
        length = answer.to_s.length # Find number of digits in above product
        nums = [] # clear nums
        p += 1 
    end # while length > 1
    
    return p
end # def persistence(num)

# Test code
print 'Please enter test integer for persistence method: '
num = gets.strip
puts "Output from persistence method: #{persistence(num)}"