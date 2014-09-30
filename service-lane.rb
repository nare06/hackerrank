input = gets.to_s.split(" ")
sum = 0
(1..(input.first.to_i)).each do |i|        
 if (i.to_s) == (i.to_s.reverse) && (i.to_s(input.last.to_i))== (i.to_s(input.last.to_i).reverse)
       sum+=i
    end
end
puts sum
