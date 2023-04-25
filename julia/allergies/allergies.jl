allergens = [
    "eggs",         # 2^0 = 1
    "peanuts",      # 2^1 = 2
    "shellfish",    # 2^2 = 4
    "strawberries", # 2^3 = 8
    "tomatoes",     # 2^4 = 16
    "chocolate",    # 2^5 = 32
    "pollen",       # 2^6 = 64
    "cats"          # 2^7 = 128
]

function allergic_to(score, allergen)
    allergen_values = digits(score, base=2, pad=16)
    allergen_position = findfirst(allergens .== allergen)
    return allergen_values[allergen_position] === 1
end

allergy_list(score) = Set(filter(allergen -> allergic_to(score, allergen), allergens))
