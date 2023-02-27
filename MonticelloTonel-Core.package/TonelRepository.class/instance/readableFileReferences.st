accessing
readableFileReferences
	^ self readableFileNames collect: [ :each |
		self fileUtils
			directoryFromPath: each
			relativeTo: self directory ]