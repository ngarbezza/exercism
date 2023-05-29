Class {
	#name : #TwoFer,
	#superclass : #Object,
	#instVars : [
		''
	],
	#category : #'Exercise@TwoFer'
}

TwoFer >> who: aPerson [
	^ 'One for ' , aPerson , ', one for me.'
]

TwoFer >> who [
	^ self who: 'you'
]
