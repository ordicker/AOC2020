module day3

include("../common/forest.jl")
export sol1, sol2

function sol1(input_path)
    f = Forest(input_path)
    diag(f,[3,1])
end

function sol2(input_path)
    f = Forest(input_path)
    @show d11 = diag(f,[1,1])
    @show d31 = diag(f,[3,1])
    @show d51 = diag(f,[5,1])
    @show d71 = diag(f,[7,1])
    @show d12 = diag(f,[1,2])
    return prod([d11,d31,d51,d71,d12])
end

function diag(f::Forest, v)
    tree_counter = 0
    loc = [0,0]
    f_size = size(f)
    while loc[2]<=f_size[2] # end at y max 
        tree_counter += f[loc...]
        loc+=v 
    end
    return tree_counter

end

end
