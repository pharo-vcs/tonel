tests
testLoadDefinitions
	| mem reader |
	
	mem := self newMemoryFileSystem.
	reader := TonelReader on: mem fileName: mem / 'MonticelloMocks'.
	reader loadDefinitions.
	self 
		assert: reader definitions sorted asOrderedCollection
		equals: self mockSnapshot definitions sorted
