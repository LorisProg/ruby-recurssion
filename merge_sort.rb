
def merge_sort(array)
	result = []

	## smallest recurssions
	return array if array.size == 1

	if array.size == 2
		array[0], array[1] = array[1], array[0] if array[0] > array [1]
		return array
	end

	## divide & recurssion
	left = merge_sort(array[0..(array.size/2 - 1)])  
	right = merge_sort(array[(array.size/2)..-1])

	## merge
	result = []
	until left.size == 0 || right.size == 0
		if left[0] <= right[0]
			result << left[0]
			left.delete_at(0)
		else
			result << right[0]
			right.delete_at(0)
		end
	end

	left.each { |n| result << n } if right.size == 0
	right.each { |n| result << n } if left.size == 0
	
	result
end
	
