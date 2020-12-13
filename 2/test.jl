include("func.jl")

import .day2

input1=
"1-3 a: abcde
1-3 b: cdefg
2-9 c: ccccccccc"

ans1=2

println("part 1:")
print("test1: ")
myans1 = day2.sol1(input1)
if(myans1 == ans1)
    println("right!")
else
    println("wrong! your answer is $ans1, expected: $myans1")
end

