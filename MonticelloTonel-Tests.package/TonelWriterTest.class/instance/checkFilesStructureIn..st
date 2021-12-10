tests
checkFilesStructureIn: aFileReference

	| nl |	
	self assert: (aFileReference / 'MonticelloTonel-Tests-Mocks') exists.
	self 
		assert: ((aFileReference / 'MonticelloTonel-Tests-Mocks') entries collect: #basename) 
		equals: #(
			'MTMock.class.st'
			'MTMockAPoolDictionary.class.st'			 
			'MTMockClassA.class.st' 
			'MTMockClassB.class.st' 
			'MTMockClassD.class.st' 
			'MTMockClassE.class.st' 
			'MTMockClassF.class.st' 
			'MTMockClassG.class.st' 
			'MTMockClassH.class.st' 
			'MTMockClassI.class.st'
			'MTMockSubclassOfA.class.st'
			'ManifestMonticelloTonelTestsMocks.class.st'
			'TonelWriter.extension.st'
			'package.st').
	
	nl := OSPlatform current lineEnding.
	self 
		assert: (aFileReference / 'MonticelloTonel-Tests-Mocks' / 'MTMockClassA.class.st') contents
		equals: (self expectedMTMockClassAClassSt withLineEndings: nl).
	self 
		assert: (aFileReference / 'MonticelloTonel-Tests-Mocks' / 'MTMockSubclassOfA.class.st') contents
		equals: (self expectedMTMockASubclassClassSt withLineEndings: nl).
	self 
		assert: (aFileReference / 'MonticelloTonel-Tests-Mocks' / 'TonelWriter.extension.st') contents
		equals: (self expectedTonelWriterExtensionSt withLineEndings: nl)