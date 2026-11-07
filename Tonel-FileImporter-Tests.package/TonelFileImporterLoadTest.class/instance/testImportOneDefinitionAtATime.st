tests - import
testImportOneDefinitionAtATime

	| importer class |
	importer := TonelFileImporter on: self classFile.
	importer classDefinitions first import.
	class := self class environment at: #TonelFITestFoo.
	self assert: class package name equals: self dataPackageName.
	self assert: class selectors isEmpty.
	(importer methodDefinitions detect: [ :each | each selector = #alpha ]) import.
	self assert: class selectors asArray equals: #( #alpha ).
	self assert: (class >> #alpha) protocolName equals: #accessing