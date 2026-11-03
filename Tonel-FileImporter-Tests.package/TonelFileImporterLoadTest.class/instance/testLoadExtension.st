tests - load
testLoadExtension

	(TonelFileImporter on: self extensionFile) load.
	self assert: 'abc' tonelFITestExtension equals: #extended.
	self assert: (String >> #tonelFITestExtension) protocolName equals: #'*TonelFileImporterTestData'.
	self assert: (String >> #tonelFITestExtension) package name equals: self dataPackageName