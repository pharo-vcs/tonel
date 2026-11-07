tests - load
testLoadInstallsMethodsInTheirProtocols

	| class |
	(TonelFileImporter on: self classFile) load.
	class := self class environment at: #TonelFITestFoo.
	self assert: (class >> #alpha) protocolName equals: #accessing.
	self assert: (class >> #tricky) protocolName equals: #tricky.
	self assert: (class class >> #withAlpha:) protocolName equals: #'instance creation'.
	self assert: (class withAlpha: 3) alpha equals: 3.
	self assert: class new tricky equals: ']['