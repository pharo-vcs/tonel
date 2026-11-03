tests - parsing
testClassFileMethodDefinitions

	| importer methods |
	importer := TonelFileImporter on: self classFile.
	methods := importer methodDefinitions.
	self assert: (methods collect: [ :each | each selector ]) asArray equals: #( #withAlpha: #alpha #alpha: #tricky ).
	self assert: (methods detect: [ :each | each selector = #withAlpha: ]) classIsMeta.
	self deny: (methods detect: [ :each | each selector = #alpha ]) classIsMeta.
	self assert: (methods detect: [ :each | each selector = #withAlpha: ]) category equals: #'instance creation'.
	self assert: (methods detect: [ :each | each selector = #alpha ]) category equals: #accessing