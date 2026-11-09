tests - load
testLoadInstallsMethodsInTheirProtocols

	| class |
	(TonelFileImporter on: self classFile) load.
	class := self class environment at: #TonelFITestFoo.
	self assert: (class >> #alpha) protocolName equals: #accessing.
	self assert: (class >> #tricky) protocolName equals: #tricky.
	self assert: (class class >> #withAlpha:) protocolName equals: #'instance creation'.

	"Using Perform to not break the release tests"
	self assert: (class perform: #withAlpha: with: 3) alpha equals: 3.
	self assert: (class new perform: #tricky) equals: ']['