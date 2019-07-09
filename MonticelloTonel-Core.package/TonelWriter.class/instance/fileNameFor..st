private
fileNameFor: aClassDefinition
	^ String streamContents: [ :aStream | 
		aStream 
			<< aClassDefinition className
			<< '.' << (self typeOf: aClassDefinition) asLowercase
			<< '.st'  ]