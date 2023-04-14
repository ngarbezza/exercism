validate_equal_length!(a, b) = if length(a) !== length(b)
    throw(ArgumentError("sequences should have the same length"))
end

"Calculate the Hamming Distance between two DNA strands."
function distance(a, b)
    validate_equal_length!(a, b)

    different_elements = [(ax, bx) for (ax, bx) in zip(a, b) if ax !== bx]
    length(different_elements)
end
