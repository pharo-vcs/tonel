tests
testLoadAllFileNames

	| memory |
	memory := self newMemoryFileSystem.
	repository := TonelRepository new directory: memory.

	self
		assert: repository allFileNames
		equals: #( 'MonticelloTonel-Tests-Mocks' )