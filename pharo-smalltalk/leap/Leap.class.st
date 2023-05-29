Class {
	#name : #Leap,
	#superclass : #Object,
	#instVars : [
		''
	],
	#category : #'Exercise@Leap'
}

Leap >> leapYear: aYearNumber [
    ^ (self isDivisible: aYearNumber by: 400)
        or: [(self isDivisible: aYearNumber by: 4) and: [(self isDivisible: aYearNumber by: 100) not]]
]

Leap >> isDivisible: aNumber by: anotherNumber [
    ^ (aNumber \\ anotherNumber == 0)
]
