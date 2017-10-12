tests
assertMethodDefinition: a and: b
	self assert: a className equals: b className.
	self assert: a selector equals: b selector.
	self assert: a protocol equals: b protocol.
	self assert: a source equals: b source.
	self assert: a classIsMeta equals: b classIsMeta
	