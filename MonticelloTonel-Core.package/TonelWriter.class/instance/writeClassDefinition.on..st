private writing
writeClassDefinition: aClassDefinition on: aStream
	| nl |
	nl := self newLine.
	
	aClassDefinition hasComment 
		ifTrue: [ 
			aStream 
				<< '"' << nl
				<< (self commentOf: aClassDefinition) << nl
				<< '"' << nl ].
	aStream
		<< (self typeOf: aClassDefinition) 
		<< ' ' << (self typeDefinitionOf: aClassDefinition ) << nl