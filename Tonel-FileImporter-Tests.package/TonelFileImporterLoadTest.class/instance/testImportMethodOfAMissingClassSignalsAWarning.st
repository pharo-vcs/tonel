tests - import
testImportMethodOfAMissingClassSignalsAWarning
	"MCPackageLoader warns about the missing class and installs nothing."

	| importer method |
	importer := TonelFileImporter on: self classFile.
	method := importer methodDefinitions detect: [ :each | each selector = #alpha ].
	self should: [ method import ] raise: Warning.
	[ method import ]
		on: Warning
		do: [ :warning | warning resume ].
	self deny: (self class environment includesKey: #TonelFITestFoo).
	self deny: (Object canUnderstand: #alpha)