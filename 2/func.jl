module day2

export sol1, sol2

function sol1(input_path)  
	valids = 0
	regex_name = r"^(\d*)-(\d*) (\w): (\w*)"

    for line in eachline(input_path)
        reg_line = match(regex_name, line)

    	low_lim = parse(Int, reg_line[1]) 
    	high_lim = parse(Int, reg_line[2])
    	element = convert(Char,reg_line[3]) 
    	str = reg_line[4]

    	counter = count(x->x==element, str)
        println(counter)
        if (counter >= low_lim && counter <= high_lim)
            valids = valids + 1    
        end
    end
    return valids
end

function sol2(input)  
    valids = 0
    regex_name = r"^(\d*)-(\d*) (\w): (\w*)"

    for line in eachline(input_path)
        reg_line = match(regex_name, line)

        first_loc = parse(Int, reg_line[1]) 
        second_loc = parse(Int, reg_line[2])
        element = reg_line[3]
        str = reg_line[4]
        
        if ((str[first_loc] == element && str[second_loc] != element) || 
            (str[first_loc] != element && str[second_loc] == element))
            valids = valids + 1    
        end
    end
    return valids
end


end
