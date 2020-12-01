module day1

export sol1

function sol1(input)  
    num_arr = [parse(Int, ii) for ii in split(input)]
    sort!(num_arr)


    return num_arr
end


end
