private - writing
writeMethodBody: methodBody on: aStream

	| nl reader |
	nl := self newLine.
	
	"Check is the current body is robust. The most correct approach is to try to read it back"
	reader := ('[' , methodBody , ']') readStream.
	[ (TonelSourceScanner on: reader) scan ] on: TonelParseError do: [ reader := nil ].
	(reader isNotNil and: [ reader atEnd ]) ifFalse: [
		"If parse failed, then use an alternative robust *chunk* format instead.
		Body is strictly delimited by `!` and existing `!` in the content are doubled"
		aStream << ' !'.
		methodBody do: [ :each |
			each = $! ifTrue: [ aStream << $! ].
			aStream << each ].
		aStream << '!' << nl.
		^ self ].
	aStream << ' [' << methodBody << nl << ']' << nl