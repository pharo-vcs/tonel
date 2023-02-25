accessing
versionFrom: aVersionReferenceString
    "until we no longer find .tree directories in the wild"

   	^ self readableFileReferences
		detect: [ :each |
			(self fileUtils directoryExists: each)
			and: [
				each basename = aVersionReferenceString
				or: [ (self versionInfoForPackageDirectory: each) name = aVersionReferenceString ] ] ]
		ifFound: [ :packageDirectory |
			self loadVersionFromFileNamed: (self fileUtils directoryName: packageDirectory) ]
		ifNone: [
			nil ]