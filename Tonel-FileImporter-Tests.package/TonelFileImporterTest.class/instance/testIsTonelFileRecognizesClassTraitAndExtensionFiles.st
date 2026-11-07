tests - recognizing
testIsTonelFileRecognizesClassTraitAndExtensionFiles

	self assert: (TonelFileImporter isTonelFile: self classFile).
	self assert: (TonelFileImporter isTonelFile: self traitFile).
	self assert: (TonelFileImporter isTonelFile: self extensionFile)