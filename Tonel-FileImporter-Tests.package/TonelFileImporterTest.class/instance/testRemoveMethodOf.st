tests - selecting
testRemoveMethodOf

	| importer |
	importer := TonelFileImporter on: self classFile.
	importer removeMethod: #alpha of: #TonelFITestFoo.
	self assert: (importer methodDefinitions collect: [ :each | each selector ]) asArray equals: #( #withAlpha: #alpha: #tricky ).
	self assert: importer definitions size equals: 4