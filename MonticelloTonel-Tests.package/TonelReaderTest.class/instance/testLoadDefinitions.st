tests
testLoadDefinitions
	| snapshot mem reader |
	
	snapshot := self mockSnapshot.
	mem := self newMemoryFileSystemSnapshot: snapshot.
	reader := TonelReader on: mem fileName: 'MonticelloMocks'.
	reader loadDefinitions.
	self 
		assert: self class mockSnapshotSTON withSqueakLineEndings
		equals: (STON toStringPretty: (MCSnapshot fromDefinitions: reader definitions asArray)) withSqueakLineEndings.
	self 
		assert: reader definitions
		equals: snapshot definitions sorted