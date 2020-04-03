tests
checkFilesWithTagStructureIn: aFileReference

	self assert: (aFileReference / 'MonticelloMocks-Tags') exists.
	self deny: (aFileReference / 'MonticelloMocks-Tags-aTag') exists.
	self 
		assert: ((aFileReference / 'MonticelloMocks-Tags') entries collect: #basename) 
		equals: #( 
			'MCMockClassWithTag.class.st' 
			'MCMockClassWithoutTag.class.st'
			'package.st')