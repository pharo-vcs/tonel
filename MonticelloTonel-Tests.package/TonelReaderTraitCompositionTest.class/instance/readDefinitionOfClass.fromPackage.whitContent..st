helper
readDefinitionOfClass: aClassName fromPackage: aPackageName whitContent: aBlockClosure 

	| mem reader definitions |
	mem := FileSystem memory root.	
	(mem / aPackageName / (aClassName , '.class.st')) 
		ensureCreateFile; 
		writeStreamDo: aBlockClosure.

	reader := TonelReader on: mem fileName: aPackageName.
	reader loadDefinitions.
	definitions := reader definitions.
	
	^ definitions detect: [ :aDef | aDef isOrganizationDefinition not and: [aDef className = aClassName] ].
	