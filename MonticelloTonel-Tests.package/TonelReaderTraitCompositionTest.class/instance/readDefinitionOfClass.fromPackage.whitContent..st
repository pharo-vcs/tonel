utilties
readDefinitionOfClass: aClassName fromPackage: aPackageName whitContent: aBlockClosure

	| memory reader definitions |
	memory := FileSystem memory root.
	(memory / aPackageName / (aClassName , '.class.st'))
		ensureCreateFile;
		writeStreamDo: aBlockClosure.

	reader := TonelReader on: memory fileName: aPackageName.
	reader loadDefinitions.
	definitions := reader definitions.

	^ definitions detect: [ :aDef | 
		  aDef isOrganizationDefinition not and: [ 
			  aDef className = aClassName ] ]