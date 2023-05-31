Class {
	#name : #Allergies,
	#superclass : #Object,
	#instVars : [
        'allergens'
    ],
	#category : #'Exercise@Allergies'
}
Allergies >> initialize [
    allergens := #(
        'eggs'         "2^0 = 1"
        'peanuts'      "2^1 = 2"
        'shellfish'    "2^2 = 4"
        'strawberries' "2^3 = 8"
        'tomatoes'     "2^4 = 16"
        'chocolate'    "2^5 = 32"
        'pollen'       "2^6 = 64"
        'cats'         "2^7 = 128"
    )
]
Allergies >> allergicToItem: anItem forScore: aScore [
    ^ (aScore bitAt: (allergens indexOf: anItem)) == 1    
]
Allergies >> allergyListForScore: aScore [
    ^ allergens select: [ :allergen | self allergicToItem: allergen forScore: aScore ]
]
