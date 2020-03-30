tests
testWriteSnapshotWithOrganizationAndOnlyOnceClassWithTag

	| aSnapshot memoryFileReference writer |
	" Taking a snapshot of the package MonticelloMocks "
	aSnapshot := self mockSnapshot copy.
	" Removing all elements from the snapshot except one class 
	  which is classified in the Package's tag 'Tag' "
	(aSnapshot definitions
		select: [ :def | def className ~= #MCMockClassI and: [ def isOrganizationDefinition not ]])
		do: [ :each | aSnapshot definitions remove: each ].
	memoryFileReference := FileSystem memory root.
	writer := self actualClass on: memoryFileReference.
	writer writeSnapshot: aSnapshot.
	
	self deny: (memoryFileReference / 'MonticelloMocks-Tag') exists.
	self assert: (memoryFileReference / 'MonticelloMocks') exists.