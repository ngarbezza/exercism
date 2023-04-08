rotate_with_overflow(new_code, x) = (new_code > x) ? Char(new_code - 26) : Char(new_code)

function rotate_char(key, char)
    code = Int(char)
    new_code = code + key
    is_uppercase_letter = code >= 65 && code <= 90
    is_lowercase_letter = code >= 97 && code <= 122
    if is_uppercase_letter
        return rotate_with_overflow(new_code, 90)
    elseif is_lowercase_letter
        return rotate_with_overflow(new_code, 122)
    else
        return Char(code)
    end
end

function rotate(key, s)
    if typeof(s) == Char
        return rotate_char(key, s)
    else
        return join(
            map(
                (char) -> rotate_char(key, char[1]),
                split(string(s), ""),
            ),
            "",
        )
    end
end
