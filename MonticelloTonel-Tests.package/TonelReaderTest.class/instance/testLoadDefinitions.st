tests
testLoadDefinitions
	| snapshot mem reader |
	
	snapshot := self mockSnapshot.
	mem := self newMemoryFileSystemSnapshot: snapshot.
	reader := TonelReader on: mem fileName: 'MonticelloMocks'.
	reader loadDefinitions.
	self 
		assert: reader definitions sorted asOrderedCollection
		equals: snapshot definitions sorted