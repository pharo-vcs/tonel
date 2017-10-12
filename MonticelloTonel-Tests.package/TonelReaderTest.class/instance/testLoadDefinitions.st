tests
testLoadDefinitions
	| snapshot mem reader |
	
	snapshot := self mockSnapshot.
	mem := self newMemoryFileSystemSnapshot: snapshot.
	reader := TonelReader on: mem fileName: 'MonticelloMocks'.
	reader loadDefinitions.
	
	self 
		assert: reader definitions size 
		equals: snapshot definitions size.
		
	reader definitions sorted 
		with: snapshot definitions sorted
		do: [ :a :b | self assertDefinition: a and: b ]