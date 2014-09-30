class New
@@count = 0
def permute(prefix,str)
	if str.length == 0
		 puts prefix
		 @@count += 1		 
	else
		#puts new_str
		en = str.length-1
		range = (0..en)
		range.each do |i|
           permute(prefix + str[i],str[0,i]+str[i+1,en])
		  #str[i] + permute((str*2)[i,en])
		  #str[i] + permute((str*2)[(i+1)..(en+i)])
		end
		return @@count
	end	
end

end
str = gets.chomp
a = New.new
puts a.permute("",str)