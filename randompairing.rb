def pairing_names(names)
    if names.length == 1
        return names
    end


    start = names.shuffle
	new_arr = []
	if start.length.even? == true
		new_arr = start.each_slice(2).to_a
	else
		new_arr = start.each_slice(2).to_a
		new_array2 = new_arr.last(2)
		new_array2 = new_array2[0] + new_array2[1]
		new_arr = new_arr[0..-3]
		new_arr.push(new_array2)
	end
	new_arr
end
# p pairing_names(["billy", "fredward", "breadward", "peter", "zatch"])

