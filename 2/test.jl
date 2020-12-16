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

myans = day2.sol1("input.txt")
println("The answer is: $myans")

print("test2: ")
myans2 = day2.sol2("input1.txt")
if(myans2 == ans2)
    println("right!")
else
    println("wrong! your answer is $myans2, expected: $ans2")
end

myans = day2.sol2("input.txt")
println("The answer is: $myans")
