writing
writeClass: aClassDefinition
	[ 
		(self packageDir / (self fileNameFor: aClassDefinition)) 
		ensureDelete;
		writeStreamDo: [ :aStream | 
			self writeClassDefinition: aClassDefinition on: aStream.
			self writeClassSideMethodDefinitions: aClassDefinition on: aStream.
			self writeInstanceSideMethodDefinitions: aClassDefinition on: aStream.
		 ] ]
	on: TonelShouldIgnore
	do: [ :e | self logCr: 'ignoring: ', aClassDefinition asString ] 