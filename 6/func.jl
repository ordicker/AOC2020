function answers(s::String)
    s=strip(s,'\n')
    lines = count(x->x=='\n',s)+1
    d=Dict{Char,Int}()
    for c in s
        if c=='\n'; continue ; end
        get!(d,c,0)
        d[c]+=1
    end
    ans = 0
    for k in keys(d)
        if d[k]==lines; ans+=1; end
    end
    return ans
end
