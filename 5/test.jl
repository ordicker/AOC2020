include("func.jl")
filename="input.txt"

open(filename,"r") do io
    ID_max = 0;
    ID_min = 1000000;
    ID_my = 0;
    for line in eachline(io)
        tmp = ticket(line)|>ID
        ID_max = max(ID_max, tmp)
        ID_min = min(ID_min, tmp)
        ID_my += tmp
    end
    println((ID_max-ID_min+1)*(ID_max+ID_min)/2-ID_my)
end

