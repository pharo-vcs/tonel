tests - selecting
testMethodsOf

	| importer |
	importer := TonelFileImporter on: self classFile.
	self
		assert: ((importer methodsOf: #TonelFITestFoo) collect: [ :each | each selector ]) asArray
		equals: #( #withAlpha: #alpha #alpha: #tricky ).
	self assert: (importer methodsOf: #String) isEmpty