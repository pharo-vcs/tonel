helper
readDefinitionOfClass: aClassName fromPackage: aPackageName whitContent: definition

	| mem reader definitions |
	mem := FileSystem memory root.
	(mem / aPackageName / (aClassName , '.class.st'))
		ensureCreateFile;
		writeStreamDo: [ :s | s << definition ].

	reader := TonelReader on: mem fileName: aPackageName.
	reader loadDefinitions.
	definitions := reader definitions.

	^ definitions detect: [ :aDef | aDef isOrganizationDefinition not and: [ aDef className = aClassName ] ]