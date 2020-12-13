include("func.jl")

import .day2

ans1=2

println("part 1:")
print("test1: ")
myans1 = day2.sol1("input1.txt")
if(myans1 == ans1)
    println("right!")
else
    println("wrong! your answer is $myans1, expected: $ans1")
end

