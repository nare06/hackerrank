require 'debugger'
def factorial(n)
    if n == 0 
        1
    else 
        n*factorial(n-1)
    end
end
x = 1000
count = 0
for u in 10..(x.to_i) do
    a = u.to_s.chars.map(&:to_i)
    sum = 0
   a.each do |value|
     # debugger
    sum = sum + factorial(value)   
end
    count += u if (sum % u.to_i) == 0 
end
puts count
