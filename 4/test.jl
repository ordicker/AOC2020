include("func.jl")
filename = "input.txt"

open(filename,"r") do io
    valids = 0
    while !eof(io)
        s=readuntil(io,"\n\n")
	valids+=passport(s)|>valid
    end
    println("Valids passports: $valids")
end


