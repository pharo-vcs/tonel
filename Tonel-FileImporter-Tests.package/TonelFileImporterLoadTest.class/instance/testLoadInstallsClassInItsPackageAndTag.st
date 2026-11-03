tests - load
testLoadInstallsClassInItsPackageAndTag

	| class |
	(TonelFileImporter on: self classFile) load.
	class := self class environment at: #TonelFITestFoo.
	self assert: class superclass identicalTo: Object.
	self assert: class package name equals: self dataPackageName.
	self assert: class packageTag name equals: #Core.
	self assert: class instVarNames asArray equals: #( #alpha #beta ).
	self assert: class classVarNames asArray equals: #( #Shared ).
	self assert: (class comment includesSubstring: '"comment" and methods contain ] and [')