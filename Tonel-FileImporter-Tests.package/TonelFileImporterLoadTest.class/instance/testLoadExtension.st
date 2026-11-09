tests - load
testLoadExtension

	(TonelFileImporter on: self extensionFile) load.
	self assert: ('abc' perform: #tonelFITestExtension) equals: #extended. "Using perform to not break the release tests"
	self assert: (String >> #tonelFITestExtension) protocolName equals: #'*TonelFileImporterTestData'.
	self assert: (String >> #tonelFITestExtension) package name equals: self dataPackageName