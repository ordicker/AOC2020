module day2

export sol1, sol2

function sol1(input_path)  
	valids = 0
	regex_name = r"^(\d*)-(\d*) (\w): (\w*)"

    for line in eachline(input_path)
        #println(match(regex_name, line))
        reg_line = match(regex_name, line)

    	low_lim = parse(Int, reg_line[1]) 
    	high_lim = parse(Int, reg_line[2])
    	element = reg_line[3]
    	str = reg_line[4]

    	counter = count(x->x==element, str)
        if (counter >= low_lim && counter <= high_lim)
            valids++    
        end
    end
    return valids
end

function sol2(input)  
    
end


end
