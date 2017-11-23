tests
testScanMethodWithLotsOfSpecials
	| scanner |
	
	scanner := TonelSourceScanner on: '[
	"Do not allow whitespace between # and the literal."

	"Do not allow number literals after the #"

	self step.
	characterType = #alphabetic
		ifTrue: [ ^ self scanSymbol ].
	characterType = #binary
		ifTrue:
			[ ^ (self scanBinary: RBLiteralToken)
				stop: self previousStepPosition ].
	currentCharacter = $''
		ifTrue: [ ^ self scanStringSymbol ].
	(currentCharacter = $( or: [ currentCharacter = $[ ])
		ifTrue: [ ^ self scanLiteralArrayToken ].
	"Accept multiple #."
	currentCharacter = $#
		ifTrue: [ ^ self scanLiteral ].
	^ self scanError: ''Expecting a literal type''
]' readStream.
	self assert: scanner scan equals: '
	"Do not allow whitespace between # and the literal."

	"Do not allow number literals after the #"

	self step.
	characterType = #alphabetic
		ifTrue: [ ^ self scanSymbol ].
	characterType = #binary
		ifTrue:
			[ ^ (self scanBinary: RBLiteralToken)
				stop: self previousStepPosition ].
	currentCharacter = $''
		ifTrue: [ ^ self scanStringSymbol ].
	(currentCharacter = $( or: [ currentCharacter = $[ ])
		ifTrue: [ ^ self scanLiteralArrayToken ].
	"Accept multiple #."
	currentCharacter = $#
		ifTrue: [ ^ self scanLiteral ].
	^ self scanError: ''Expecting a literal type'''