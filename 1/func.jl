module day1

export sol1

sol1(input) = 514579

function play(input) # returns a sorted array with file_path elements 
    num_arr = [parse(Int, input) for input in split(s)]
    sort!(num_arr)
    return num_arr
end


end
