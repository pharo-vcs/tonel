private
extractSelector: aString
	| separators selectorStream keywords |
	
	separators := { 
		Character space. 
		Character tab. 
		Character lf. 
		Character newPage. 
		Character cr. 
		$:}.

	keywords := Array new writeStream.
	selectorStream := (self removeComments: aString) readStream.

	[ selectorStream atEnd ]
	whileFalse: [ | word ch |
		word := String new writeStream.
		[ selectorStream atEnd not and: [ (separators includes: (ch := selectorStream next)) not ] ]
		whileTrue: [ word nextPut: ch ].
		ch = $: ifTrue: [ word nextPut: ch ]. 
		word contents trimBoth ifNotEmpty: [ :v | keywords nextPut: v ] ].
	keywords := keywords contents.

	^ (keywords size <= 2 
		ifTrue: [ keywords first]
		ifFalse: [ ('' join: (keywords pairsCollect: [ :keyword :argument | keyword ])) ])
		asSymbol
