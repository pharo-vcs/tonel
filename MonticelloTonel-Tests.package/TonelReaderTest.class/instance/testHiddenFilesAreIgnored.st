tests
testHiddenFilesAreIgnored

	self withTonelWriterClassesDo: [ :writerClass | 
		| snapshot mem reader |
		snapshot := self mockSnapshot.
		mem := self
			       newMemoryFileSystemSnapshot: snapshot
			       writtenBy: writerClass.
		(mem / 'MonticelloMocks' / '._MCMockClassG.class.st')
			ensureCreateFile;
			writeStreamDo: [ :s | s << 'This file should be ignored' ].
		reader := TonelReader on: mem fileName: 'MonticelloMocks'.
		reader loadDefinitions.

		self
			assert: reader definitions size
			equals: snapshot definitions size.

		reader definitions sorted
			with: snapshot definitions sorted
			do: [ :a :b | self assertDefinition: a and: b ] ]