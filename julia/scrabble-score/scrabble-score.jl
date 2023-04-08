function score_for_letter(letter)
    scores = Dict(
        1 => ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
        2 => ['D', 'G'],
        3 => ['B', 'C', 'M', 'P'],
        4 => ['F', 'H', 'V', 'W', 'Y'],
        5 => ['K'],
        8 => ['J', 'X'],
        10 => ['Q', 'Z']
    )

    result = findfirst(v -> letter in v, scores)
    isnothing(result) ? 0 : result
end

function score(str)
    sum(
        map(
            (c) -> score_for_letter(uppercase(c[1])),
            collect(str),
        )
    )
end
