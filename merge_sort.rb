
def merge_sort(array)

	## smallest recurssions
	return array if array.size <= 1

	## divide & recurssion
	left = merge_sort(array[0..(array.size/2 - 1)])  
	right = merge_sort(array[(array.size/2)..-1])

	## merge
	result = []
	until left.empty? || right.empty?
		if left[0] < right[0]
			result << left.shift
		else
			result << right.shift
		end
	end

	result += left + right
	
	result
end
	
