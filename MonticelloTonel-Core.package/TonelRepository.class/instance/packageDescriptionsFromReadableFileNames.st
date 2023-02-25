accessing
packageDescriptionsFromReadableFileNames
    ^ ((self readableFileNames
		collect: [ :each | self fileUtils directoryFromPath: each relativeTo: self directory ])
		select: [ :each | self fileUtils directoryExists: each ])
		collect: [ :each | self packageDescriptionFromPackageDirectory: each ]