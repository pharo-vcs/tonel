tests - load
testLoadTrait

	| trait |
	(TonelFileImporter on: self traitFile) load.
	trait := self class environment at: #TTonelFITestTrait.
	self assert: trait isTrait.
	self assert: trait package name equals: self dataPackageName.
	self assert: (trait includesSelector: #traitValue).
	self assert: (trait classSide includesSelector: #classTraitValue)