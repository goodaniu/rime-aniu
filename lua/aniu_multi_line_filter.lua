--- 过滤器：以\n为换行符打印

        --cand = Candidate("multi",seg.start,seg._end,str1,cand.comment)


local function duohang(input, env)
for cand in input:iter() do
    if string.find(cand.text, "\\n") then
        local str1 = string.gsub(cand.text, "\\n", "\n")
        yield(Candidate("cand", cand.start, cand._end, str1, "多行"))
    else
        yield(cand)
    end
end
end

return duohang
