tests
testWriteSnapshotWithoutOrganization
	"test if the exported code has correct structure even if the Monticello snapshot does not have
	a proper organization definition so the structure must be taken from the category names. 
	See TonelWriter>>#createDefaultOrganizationFrom:"

	| aSnapshot memoryFileReference writer |
	
	aSnapshot := self mockSnapshot copy.
	(aSnapshot definitions select: #isOrganizationDefinition) do: [ :each | 
		aSnapshot definitions remove: each ].
	
	memoryFileReference := FileSystem memory root.
	writer := self actualClass on: memoryFileReference.
	writer writeSnapshot: self mockSnapshot.
	
	self checkFilesStructureIn: memoryFileReference
	
	
