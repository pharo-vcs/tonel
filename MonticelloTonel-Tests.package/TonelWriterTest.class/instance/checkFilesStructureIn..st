tests
checkFilesStructureIn: aFileReference

	| nl |
	
	self assert: (aFileReference / 'MonticelloMocks') exists.
	self 
		assert: ((aFileReference / 'MonticelloMocks') entries collect: #basename) 
		equals: #(
			'MCMockASubclass.class.st' 
			'MCMockClassA.class.st' 
			'MCMockClassB.class.st' 
			'MCMockClassD.class.st' 
			'MCMockClassE.class.st' 
			'MCMockClassF.class.st' 
			'MCMockClassG.class.st' 
			'MCMockClassH.class.st'
			'MCSnapshotTest.extension.st'
			'package.st').
	
	nl := OSPlatform current lineEnding.
	self 
		assert: (aFileReference / 'MonticelloMocks' / 'MCMockClassA.class.st') contents
		equals: (self expectedMCMockClassAClassSt withLineEndings: nl).
	self 
		assert: (aFileReference / 'MonticelloMocks' / 'MCMockASubclass.class.st') contents
		equals: (self expectedMCMockASubclassClassSt withLineEndings: nl).
	self 
		assert: (aFileReference / 'MonticelloMocks' / 'MCSnapshotTest.extension.st') contents
		equals: (self expectedMCSnapshotTestExtensionSt withLineEndings: nl)