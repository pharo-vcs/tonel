tests - load
testLoadDoesNotInstallRemovedMethods

	| class |
	(TonelFileImporter on: self classFile)
		removeMethod: #tricky of: #TonelFITestFoo;
		load.
	class := self class environment at: #TonelFITestFoo.
	self assert: (class includesSelector: #alpha).
	self deny: (class includesSelector: #tricky)