tests
testLoadSelectorWithComments

	self withTonelWriterClassesDo: [ :writerClass |
		| snapshot mem reader |
		snapshot := self mockSnapshotWithCommentsInSelector.
		mem := self
			       newMemoryFileSystemSnapshot: snapshot
			       writtenBy: writerClass.
		reader := TonelReader on: mem fileName: 'MonticelloTonel-Tests-Mocks'.
		reader loadDefinitions.

		self
			assert: reader definitions size
			equals: snapshot definitions size.

		reader definitions sorted
			with: snapshot definitions sorted
			do: [ :actualDefinition :expectedDefinition | self assertDefinition: actualDefinition and: expectedDefinition ] ]