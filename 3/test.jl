include("func.jl")

import .day3

ans1=7

println("part 1:")
print("test1: ")
myans1 = day3.sol1("input.txt")
if(myans1 == ans1)
    println("right!")
else
    println("wrong! your answer is $myans1, expected: $ans1")
end

myans = day3.sol1("input1.txt")
println("The answer is: $myans")


myans = day3.sol2("input.txt")
println("The answer is: $myans")

