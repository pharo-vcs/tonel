tests
testLoadDefinitions
	| snapshot mem reader |
	
	snapshot := self mockSnapshot.
	mem := self newMemoryFileSystemSnapshot: snapshot.
	reader := TonelReader on: mem fileName: 'MonticelloMocks'.
	reader loadDefinitions.
	self 
		assert: self class mockSnapshotSTON
		equals: (STON toStringPretty: (MCSnapshot fromDefinitions: reader definitions)).
	self 
		assert: reader definitions
		equals: snapshot definitions sorted