def pairing_names(names)
    start = names.shuffle
    if start.length.even? == true
        newarr = start.each_slice(2).to_a
    else
        newarr = start.each_slice(2).to_a
        newarr2 = newarr.last(2)
        newarr2 = newarr2[0] + newarr2[1]
        newarr = newarr[0..-3]
        newarr.push(newarr2)
    end
end
p pairing_names(["billy", "fredward", "breadward", "peter", "zatch"])

