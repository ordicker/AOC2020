function passport(line::String)
    D = Dict{String,String}()
    rx=r"(\S*):(\S*)"
    for field in eachmatch(rx,line)
        push!(D,field[1] => field[2])
    end
    return D
end

function valid(D::Dict)

    if(!all(x->x in keys(D),["byr","iyr","eyr","hgt","hcl","ecl","pid"])) return false; end
    if(!(1920<=parse(Int,D["byr"])<=2002)); return false; end
    if(!(2010<=parse(Int,D["iyr"])<=2020)); return false; end
    if(!(2020<=parse(Int,D["eyr"])<=2030)); return false; end

    m = match(r"(\d*)(cm|in)",D["hgt"])
    if(isnothing(m)); return false; end

    if(m[2]=="cm"&&!(150<=parse(Int,m[1])<=193)); return false; end
    if(m[2]=="in"&&!(59<=parse(Int,m[1])<=76)); return false; end
       
    if(isnothing(match(r"^#[\d|a-f]{6}$",D["hcl"]))) return false; end
    if(!(D["ecl"] in ["amb","blu","brn","gry","grn","hzl","oth"])); return false; end

    if(isnothing(match(r"^[\d]{9}$",D["pid"]))) return false; end
    
    return true
end
