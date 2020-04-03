tests-tags
testWriteSnapshotWithOrganizationIncludingAClassWithTag

	| aSnapshot memoryFileReference writer |
	" Taking a snapshot of the package MonticelloMocksWithTag "
	aSnapshot := self mockSnapshotWithTag copy.
	" Removing organization elements "
	(aSnapshot definitions select: #isOrganizationDefinition )
		do: [ :each | aSnapshot definitions remove: each ].
	memoryFileReference := FileSystem memory root.
	writer := self actualClass on: memoryFileReference.
	writer writeSnapshot: aSnapshot.
	
	self checkFilesWithTagStructureIn: memoryFileReference 