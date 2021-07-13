function encode(s)
    encoded = ""
    if !isempty(s)
        char_diff = append!([s[i-1]==s[i] for i=2:length(s)], false)
        count = 1
        for i=1:length(char_diff)
            if char_diff[i]
                count += 1
            else
                encoded = encoded * (count>1 ? string(count) : "") * s[i]
                count = 1
            end
        end
    end
    return encoded
end


function decode(s)
    n_buffer = ""
    decoded = ""
    for c in s
        if isletter(c) || isspace(c)
            if isempty(n_buffer)
                decoded = decoded*c
            else
                decoded = decoded*c^parse(Int, n_buffer)
            end
            n_buffer = ""
        else
            n_buffer = n_buffer*c
        end
    end
    return decoded
end

encoded = encode("   hsqq qww  ")
