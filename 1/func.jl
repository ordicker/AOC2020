module day1

export sol1,sol2

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

function sol2(input)
    num_arr = [parse(Int, ii) for ii in split(input)]
    sort!(num_arr)
    for big in reverse(num_arr)
        for small in num_arr
            if big<small
                println("didn't find")
                return nothing
            end
            
            mid = 2020 -big -small
            if mid<0
                break
            else
                ind = findfirst(num_arr.==mid)
                if ind ≠ nothing
                    return big*num_arr[ind]*small
                end
            end
        end
    end
end

end
