function passport(line::String)
    D = Dict{String,String}()
    rx=r"(\S*):(\S*)"
    for field in eachmatch(rx,line)
        push!(D,field[1] => field[2])
    end
    return D
end

function valid(D::Dict)
    k=keys(D)
    if length(k)==8; return true; end
    if (length(k)==7)&&!haskey(D,"cid"); return true; end
    return false
end
