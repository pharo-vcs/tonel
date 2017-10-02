private
extractSelector: aString
	| separators keywords |
	separators := { 
		Character space. 
		Character tab. 
		Character lf. 
		Character newPage. 
		Character cr. 
		$:}.

	keywords := Array new writeStream.
	stream := aString readStream.
	[ stream atEnd ]
	whileFalse: [ | word ch |
		word := String new writeStream.
		[ stream atEnd not and: [ (separators includes: (ch := stream next)) not ] ]
		whileTrue: [ word nextPut: ch ].
		ch = $: ifTrue: [ word nextPut: ch ]. 
		word contents trimBoth ifNotEmpty: [ :v | keywords nextPut: v ] ].
	keywords := keywords contents.

	^ (keywords size <= 2 
		ifTrue: [ keywords first]
		ifFalse: [ ('' join: (keywords pairsCollect: [ :keyword :argument | keyword ])) ])
		asSymbol
