function ticket(s::String)
    tmp=BitArray(x=='B' for x in s[1:7])
    row=reinterpret(Int64, reverse(tmp).chunks)
    tmp = BitArray(x=='R' for x in s[8:10])
    column=reinterpret(Int64,reverse(tmp).chunks)
    (row[1], column[1])
end

ID(x) = x[1]*8+x[2]
