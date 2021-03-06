###############################################################################
#                               Forest Datatype                               #
###############################################################################
struct Forest{T}
    data::Array{T,2}
    size::Tuple{Integer,Integer}
end

# constractor from a file 
function Forest(filename::String)
    open(filename) do f 
        size_y = countlines(f)
        seekstart(f)
        size_x = length(readline(f))
        seekstart(f)
        data = Array{Bool,2}(zeros(size_x,size_y))
        for (line_num,line) in enumerate(eachline(f))
            tree_locations = first.(findall("#",line))
            data[tree_locations,line_num] .= true
        end
        Forest(data, (size_x,size_y))
    end
end

###############################################################################
#                                  interface                                  #
###############################################################################
Base.getindex(f::Forest,x::Int,y::Int) = f.data[x%f.size[1]+1,y%f.size[2]+1]
Base.setindex!(f::Forest,val,x::Int,y::Int) = f.data[x+1,y+1]=val
Base.size(f::Forest) = f.size
