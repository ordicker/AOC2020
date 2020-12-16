module day3

export sol1, sol2

function sol1(input_path)  
    tree_counter = 0
    next_stop_x = 0
    
    for line in eachline(input_path)
        arr = split(line,"")
        MAX_X = length(arr)
        
        if arr[next_stop_x + 1] == "#"
            tree_counter = tree_counter + 1
        end
        next_stop_x = (next_stop_x + 3) % MAX_X 

    end
    return tree_counter
end

function sol2(input_path)  
    
end


end
