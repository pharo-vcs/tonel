private - definitions
setPackageInfoOf: aClassDefinition in: definition

	self class isLegacyFormat ifTrue: [ super setPackageInfoOf: aClassDefinition in: definition ].

	self at: #package put: aClassDefinition packageName in: definition.
	aClassDefinition tagName ifNotNil: [ :tagName | self at: #tag put: tagName in: definition ]