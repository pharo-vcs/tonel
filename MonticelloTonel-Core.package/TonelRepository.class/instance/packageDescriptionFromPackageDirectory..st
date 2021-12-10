accessing
packageDescriptionFromPackageDirectory: packageDirectory

	| filename |
	filename := self fileUtils directoryName: packageDirectory.
	^ { 
		  filename.
		  'tonel'.
		  1.
		  filename }