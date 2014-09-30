def feb(n)
if n==2 
    1
elsif n==1
   1
else
   feb(n-2)+feb(n-1)
end
end

puts feb(9)

def factorial(n)
if n == 0   1
else n*factorial(n-1)
end
end

puts factorial(10)
puts factorial(4)

def maxstars
  str = "###*****##*************####***************##"
  max_star_count = 0
  max_hash_count = 0
  hash_count = 0
  star_count = 0
 
  str.each do |u|{
    if u == "#"
       star_count = 0 
       hash_count++
       max_hash_count = hash_count if max_hash_count < hash_count
    else
       hash_count = 0
       max_star_count = star_count if max_star_count < star_count
       star_count++
    end
}
 end
  
max_star_count
end

puts maxstarts
  

