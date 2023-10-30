tests
testHiddenFilesAreIgnored

	self withTonelWriterClassesDo: [ :writerClass |
		| snapshot mem reader |
		snapshot := self mockSnapshot.
		mem := self
			       newMemoryFileSystemSnapshot: snapshot
			       writtenBy: writerClass.
		(mem / 'MonticelloTonel-Tests-Mocks' / '._MTMockClassG.class.st')
			ensureCreateFile;
			writeStreamDo: [ :s | s << 'This file should be ignored' ].
		reader := TonelReader on: mem fileName: 'MonticelloTonel-Tests-Mocks'.
		reader loadDefinitions.

		self
			assert: reader definitions size
			equals: snapshot definitions size.

		reader definitions sorted
			with: snapshot definitions sorted
			do: [ :actualDefinition :expectedDefinition | self assertDefinition: actualDefinition and: expectedDefinition ] ]