include("func.jl")
import .day1

input1=
"1721
979
366
299
675
1456"

ans1 = 514579

print("test1: ")
myans1 = day1.sol1(input1)
if(myans1 == ans1)
    println("right!")
else
    println("wrong! your answer is $ans1, expected: $myans1")
end


real_input ="3"
solution = day1.sol1(real_input)
println("The answer is: $solution")
