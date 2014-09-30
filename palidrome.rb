string = gets.chomp
s1 = string.chars
total_even_count = 0
total_odd_count = 0
str = s1.to_a.uniq
list = str.collect{|id| s1.select{|id2| id2 == id}.size}
list.each do |u|
    if (u % 2) == 0 
        total_even_count += 1
        else 
        total_odd_count += 1
        end
end
if total_odd_count == 1 
    puts "YES"
elsif total_even_count > 0 and total_odd_count <= 1
    puts "YES"
else
    puts "NO"
end