metacello support
goferVersionFrom: aVersionReference
	"Simillar hack than FileTree repositories."

	(self readableFileNames collect: [ :fileName | self fileDirectoryOn: fileName ])
		do: [ :packageDirectory |
			((self fileUtils directoryExists: packageDirectory )
			and: [(self versionInfoForPackageDirectory: packageDirectory) name = aVersionReference name])
				ifTrue: [ ^ self loadVersionFromFileNamed: (self fileUtils directoryName: packageDirectory) ] ].
	^nil