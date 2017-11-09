private
isSimpleSymbol: symbol
	"Customize STON to only consider very clean symbols as literal, 
	for all others err on the safe side and quote them."
	
	symbol isEmpty ifTrue: [ ^ false ].
	('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ' includes: symbol first)
		ifFalse: [ ^ false ].
	^ symbol allSatisfy: [ :each | 
		'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789' includes: each ]