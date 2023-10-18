metacello support
createRepositoryFromSpec: aRepositorySpec

	^ self new
		  directory: (aRepositorySpec description copyFrom: (aRepositorySpec type , '://') size + 1 to: aRepositorySpec description size) asFileReference;
		  yourself