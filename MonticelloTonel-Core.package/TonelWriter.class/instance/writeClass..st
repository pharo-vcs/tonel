writing
writeClass: aClassDefinition
	[ self fileUtils writeStreamFor: (self fileNameFor: aClassDefinition) in: self packageDir do: [ :aStream | self writeClass: aClassDefinition on: aStream ] ]
		on: TonelShouldIgnore
		do: [ :e | self logCr: 'ignoring: ' , aClassDefinition asString ]