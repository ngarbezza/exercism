"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
    alphabet = 'a':'z'
    all(letter -> letter in lowercase(input), alphabet)
end
