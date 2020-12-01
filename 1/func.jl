module day1

export sol1

function sol1(input)  
    num_arr = [parse(Int, ii) for ii in split(input)]
    sort!(num_arr)
    for big in reverse(num_arr)
        small = 2020 - big
        ind = findfirst(num_arr.==small)
        if(ind ≠ nothing)
            return big*num_arr[ind]
        end
    end
    println("We didn't find two numbers that summed to 2020")
    return nothing
end


end
