private
splitMethodSource: aMethodDefinition into: aBlock
	| keywords source declaration |

	keywords := aMethodDefinition selector keywords.
	source := aMethodDefinition source readStream.
	"Skip spaces"
	(source peek isSeparator) ifTrue: [ self skipSeparators: source ].
	"Skip comments"
	(source peek = $") ifTrue: [ self skipComment: source ].
	"Parse declaration"
	declaration := String new writeStream.
	[ (self selectorIsComplete: keywords in: declaration originalContents) not
		or: [ ':+-/\*~<>=@,%|&?!' includes: declaration contents trimRight last ] ]
	whileTrue: [
		"stop infinite loop if no match was found"
		source atEnd ifTrue: [ TonelWriteError signal: 'Cannot find selector in source for ', aMethodDefinition asString ].
		"get separators"
		[ source atEnd not and: [ source peek isSeparator ] ]
			whileTrue: [ declaration nextPut: source next ].
		"take next word until we find a separator or a dot"
		[ source atEnd not and: [ source peek ~= $. and: [ source peek isSeparator not ] ] ]
			whileTrue: [ declaration nextPut: source next ] ].
	aBlock
		value: (declaration contents trimLeft withLineEndings: self newLine)
		value: (source upToEnd withLineEndings: self newLine)