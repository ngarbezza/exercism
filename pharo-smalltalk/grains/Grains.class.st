Class {
	#name : #Grains,
	#superclass : #Object,
	#instVars : [],
	#category : #'Exercise@Grains'
}

Grains >> atSquare: aSquareIndex [
    (aSquareIndex between: 1 and: 64) ifFalse: [self error: 'square must be between 1 and 64'].
    
    ^ 2 raisedTo: aSquareIndex - 1
]

Grains >> total [
    ^ (1 to: 64) sum: [ :index | self atSquare: index ]
]