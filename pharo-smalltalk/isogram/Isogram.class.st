Class {
	#name : #Isogram,
	#superclass : #Object,
	#category : #'Exercise@Isogram'
}

Isogram >> isIsogramPhrase: aPhrase [
    | letters sameCaseLetters |
    letters := aPhrase reject: [ :char | '- ' includes: char ].
    sameCaseLetters := letters collect: [ :letter | letter asUppercase ].
    ^ sameCaseLetters size == sameCaseLetters asSet size
]
