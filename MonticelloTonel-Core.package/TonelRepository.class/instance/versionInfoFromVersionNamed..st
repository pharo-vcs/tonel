versions
versionInfoFromVersionNamed: aString
	^ self versionInfoForPackageDirectory: (self fileDirectoryOn: aString)