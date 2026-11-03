tests - import
testMethodDefinitionTargetsTheLoadedClass

	| importer instanceSide classSide |
	importer := TonelFileImporter on: self classFile.
	importer load.
	instanceSide := importer methodDefinitions detect: [ :each | each selector = #alpha ].
	classSide := importer methodDefinitions detect: [ :each | each selector = #withAlpha: ].
	self assert: instanceSide existsBehavior.
	self assert: instanceSide targetClass identicalTo: (self class environment at: #TonelFITestFoo).
	self assert: classSide targetClass identicalTo: (self class environment at: #TonelFITestFoo) class