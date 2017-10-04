accessing
packageDir
	^ packageDir 
		ifNotNil: [ self fileUtils directoryFromPath: packageDir relativeTo: self sourceDir ]
		ifNil: [ self sourceDir  ]