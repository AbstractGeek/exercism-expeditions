"Your optional docstring here"
function distance(a, b)
    distance = 0
    if sizeof(a) == sizeof(b)
        for (i,j) in zip(a,b)
            if i != j
                distance += 1
            end
        end
        return distance
    else
        throw(ArgumentError("input strands are not of the same size"))
    end

end
