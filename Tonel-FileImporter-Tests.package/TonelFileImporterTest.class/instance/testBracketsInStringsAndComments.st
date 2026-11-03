tests - parsing
testBracketsInStringsAndComments

	| tricky |
	tricky := (TonelFileImporter on: self classFile) methodDefinitions detect: [ :each | each selector = #tricky ].
	self assert: (tricky source includesSubstring: '"a comment with ] and [ inside"').
	self assert: (tricky source includesSubstring: '^ ''][''').
	self assert: (tricky source trimRight endsWith: '''][''')