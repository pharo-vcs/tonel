accessing
asRepositorySpec

	^ (MetacelloRepositorySpec description: self description)
		  type: 'tonel';
		  yourself