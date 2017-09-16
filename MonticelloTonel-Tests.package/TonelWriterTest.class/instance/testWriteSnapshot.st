tests
testWriteSnapshot
	| writer mem |
	
	mem := FileSystem memory root.
	writer := TonelWriter on: mem.
	writer writeSnapshot: self mockSnapshot.
	
	self assert: (mem / 'MonticelloMocks') exists.
	self 
		assert: ((mem / 'MonticelloMocks') entries collect: #basename) 
		equals: #(
			'MCMockASubclass.class.st' 
			'MCMockClassA.class.st' 
			'MCMockClassB.class.st' 
			'MCMockClassD.class.st' 
			'MCMockClassE.class.st' 
			'MCMockClassF.class.st' 
			'MCMockClassG.class.st' 
			'MCMockClassH.class.st' 
			'MCMockClassI.class.st' 
			'MCSnapshotTest.extension.st'
			'package.st').
	self 
		assert: (mem / 'MonticelloMocks' / 'MCMockClassA.class.st') contents
		equals: self expectedMCMockClassAClassSt.
	self 
		assert: (mem / 'MonticelloMocks' / 'MCMockASubclass.class.st') contents
		equals: self expectedMCMockASubclassClassSt.
	self 
		assert: (mem / 'MonticelloMocks' / 'MCSnapshotTest.extension.st') contents
		equals: self expectedMCSnapshotTestExtensionSt