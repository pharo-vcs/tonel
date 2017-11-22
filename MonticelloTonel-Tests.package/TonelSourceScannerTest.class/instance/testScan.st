tests
testScan
	| scanner |
	
	scanner := TonelSourceScanner on: '[self a: '''' b: '''' c: '''']' readStream.
	self assert: scanner scan equals: 'self a: '''' b: '''' c: '''''