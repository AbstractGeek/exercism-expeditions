function bob(stimulus)
    without_spaces = filter(!isspace, stimulus)
    letters = filter(isletter, without_spaces)
    if isempty(without_spaces)
        # silence
        return "Fine. Be that way!"
    elseif last(without_spaces) == '?'
        if !isempty(letters) && all(isuppercase(c) for c in letters)
            return "Calm down, I know what I'm doing!"
        else
            return "Sure."
        end
    elseif !isempty(letters) && all(isuppercase(c) for c in letters)
        return "Whoa, chill out!"
    else
        return "Whatever."
    end
end
