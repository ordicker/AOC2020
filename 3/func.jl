module day2

export sol1, sol2

function sol1(input_path)  
    tree_counter = 0
    regex_name = r"^(\d*)-(\d*) (\w): (\w*)"

    for line in eachline(input_path)
        reg_line = match(regex_name, line)

    end
    return 
end

function sol2(input_path)  
    
end


end
