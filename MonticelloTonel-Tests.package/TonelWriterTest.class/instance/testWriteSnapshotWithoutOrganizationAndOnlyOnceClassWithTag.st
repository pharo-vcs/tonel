tests
testWriteSnapshotWithoutOrganizationAndOnlyOnceClassWithTag

	| aSnapshot memoryFileReference writer |
	" Taking a snapshot of the package MonticelloTonel-Tests-Mocks "
	aSnapshot := self mockSnapshot copy.
	" Removing all elements from the snapshot except one class
	  which is classified in the Package's tag 'Tag' "
	(aSnapshot definitions
		select: [ :def | def className ~= #MTMockClassI ])
		ifNotEmpty: [ :defs |
			aSnapshot
				writeSlotNamed: 'definitions'
				value: (aSnapshot definitions copyWithoutAll: defs) ].
	memoryFileReference := FileSystem memory root.
	writer := self actualClass on: memoryFileReference.
	writer writeSnapshot: aSnapshot.

	self deny: (memoryFileReference / 'MonticelloTonel-Tests-Mocks-Tag') exists.
	self assert: (memoryFileReference / 'MonticelloTonel-Tests-Mocks') exists