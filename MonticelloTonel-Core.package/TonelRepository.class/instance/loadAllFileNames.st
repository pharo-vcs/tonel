accessing
loadAllFileNames
	^ super loadAllFileNames
		select: [ :each |
			self fileUtils
				filePathExists: each, '/package.st'
				relativeTo: self directory ]