gem_elements = []
no_of_rocks = gets.to_i
(1..no_of_rocks).each do |i|
    a = gets.to_s
   puts a.chars.to_a
    gem_elements = gem_elements & (a.chars.to_a)
    puts gem_elements
end

puts gem_elements.to_a.uniq.count
