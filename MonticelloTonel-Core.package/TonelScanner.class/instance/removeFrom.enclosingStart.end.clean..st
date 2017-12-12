private
removeFrom: aString enclosingStart: startChar end: endChar clean: cleanSymbol
	"cleanSymbol can be #left, #rigth and #both" 
	| nl result stop ch start end |
	
	nl := String cr. "new line will be internal new line: cr"
	result := (aString trimBoth withLineEndings: nl) readStream.
	(result peek = startChar) 
		ifFalse: [ TonelParseError signal: 'I cannot remove enclosing start' ].
	result skip: 1.
	
	(#(both left) includes: cleanSymbol) 
		ifTrue: [ 
			stop := nl size.
			[ (stop > 0) and: [ self isSeparator: (ch := result peek) ] ]
			whileTrue: [ 
				(self isEnter: ch) ifTrue: [ stop := stop - 1 ].
				result skip: 1 ] ].
	start := result position.
	
	result setToEnd.
	result skip: -1.
	(result peek = endChar) 
		ifFalse: [ TonelParseError signal: 'I cannot remove enclosing end' ].
	result skip: -1.
	(#(both right) includes: cleanSymbol)
		ifTrue: [ 
			stop := nl size.
			[ (stop > 0) and: [ self isSeparator: (ch := result peek) ] ]
			whileTrue: [ 
				(self isEnter: ch) ifTrue: [ stop := stop - 1 ].
				result skip: -1. ] ].
	end := result position.
	
	^ result originalContents
		copyFrom: start + 1 
		to: end + 1