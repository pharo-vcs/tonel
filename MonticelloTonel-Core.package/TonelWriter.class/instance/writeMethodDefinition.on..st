private - writing
writeMethodDefinition: aMethodDefinition on: aStream
	^ self 
		writeMethodDefinition: aMethodDefinition 
		parent: nil 
		on: aStream