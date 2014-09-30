
def nthmax(arr,n)
  pivot = arr[n-1]
  #puts pivot
  i = j = 0
  new_arr = [pivot]
  #puts arr
  arr.each do |element|  	
   if element > pivot
      new_arr = new_arr << element
       j += 1
   	 elsif element < pivot
   	   new_arr = new_arr.unshift(element)
   	   i += 1 
   	end
   end

   	 if n < i+1    #(i+1) is new pivot position
   	 return nthmax(new_arr[0,i],n)
   	 elsif n > i+1
   	 	#debugger
   	 return nthmax(new_arr[i+1,new_arr.length],n-i-1)
   	 else
   	  return arr[i]
   	  end  
end

  arr = [8,9,2,1,0,-4,-9,25,45,-100,-90,100,100,100,56,56,90,-1000,56,78,89,90,56,56,89,90,1,908,200000,34556].shuffle
 #arr = [908, 56, 90, -1000, 56, -90, 100, 56, 8, 90, -100, 89, 56, 45, 25, 90, 1, 100, 1, -9, 78, 100, 0, 56, -4, 9, 89, 2]
 #There is an error with this input before. For the solution I thought about I want to use an hash
 #print arr
 a = Hash.new
 arr.each do |u|
 	i = 1
 	if a[u].nil?
 	  a[u] = i
    else
      a[u] = a[u] + i
    end
 end
 puts nthmax(a.keys,11)
 puts arr.uniq.sort[10]