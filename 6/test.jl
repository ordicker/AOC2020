include("func.jl")
filename = "input.txt"

open(filename,"r") do io
    s=0
    while !eof(io)
        group=readuntil(io,"\n\n")
	s+=answers(group)
        println(s)
    end
    println("sum: $s")
end

