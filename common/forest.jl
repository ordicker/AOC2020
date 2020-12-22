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
Base.getindex(f::Forest,x::Int,y::Int) = f.data[x,y]
Base.getindex(f::Forest,i::Int) = f.data[i]
Base.setindex!(f::Forest,val,x::Int,y::Int) = f.data[x,y]=val
Base.setindex!(f::Forest,val,i::Int) = f.data[i]=val
