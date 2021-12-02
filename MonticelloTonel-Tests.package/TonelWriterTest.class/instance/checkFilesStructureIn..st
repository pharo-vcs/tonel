tests
checkFilesStructureIn: aFileReference

	| nl |
	
	self assert: (aFileReference / 'MonticelloTonel-Tests-Mocks') exists.
	self 
		assert: ((aFileReference / 'MonticelloTonel-Tests-Mocks') entries collect: #basename) 
		equals: #(
			'MTMockASubclass.class.st' 
			'MTMockClassA.class.st' 
			'MTMockClassB.class.st' 
			'MTMockClassD.class.st' 
			'MTMockClassE.class.st' 
			'MTMockClassF.class.st' 
			'MTMockClassG.class.st' 
			'MTMockClassH.class.st' 
			'MTMockClassI.class.st'
			'MCSnapshotTest.extension.st'
			'package.st').
	
	nl := OSPlatform current lineEnding.
	self 
		assert: (aFileReference / 'MonticelloTonel-Tests-Mocks' / 'MTMockClassA.class.st') contents
		equals: (self expectedMCMockClassAClassSt withLineEndings: nl).
	self 
		assert: (aFileReference / 'MonticelloTonel-Tests-Mocks' / 'MTMockASubclass.class.st') contents
		equals: (self expectedMCMockASubclassClassSt withLineEndings: nl).
	self 
		assert: (aFileReference / 'MonticelloTonel-Tests-Mocks' / 'MTSnapshotTest.extension.st') contents
		equals: (self expectedMCSnapshotTestExtensionSt withLineEndings: nl)