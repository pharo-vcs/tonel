tests
testScanForLiteralArrayIfMatch
	| scanner |
	
	scanner := TonelSourceScanner on: '#()' readStream.
	scanner prepareToScan.
	scanner scanNextChunk; scanNextChunk. 
	scanner scanForLiteralArrayIfMatch: [].
	self 
		assert: ((scanner instVarNamed: 'result') contents) 
		equals: '#()'.	

	scanner := TonelSourceScanner on: '#(a b c)' readStream.
	scanner prepareToScan.
	scanner scanNextChunk; scanNextChunk. 
	scanner scanForLiteralArrayIfMatch: [].
	self 
		assert: ((scanner instVarNamed: 'result') contents) 
		equals: '#(a b c)'.	

	scanner := TonelSourceScanner on: '#((a b) c)' readStream.
	scanner prepareToScan.
	scanner scanNextChunk; scanNextChunk. 
	scanner scanForLiteralArrayIfMatch: [].
	self 
		assert: ((scanner instVarNamed: 'result') contents) 
		equals: '#((a b) c)'.	

	scanner := TonelSourceScanner on: '#((a (b)) c)' readStream.
	scanner prepareToScan.
	scanner scanNextChunk; scanNextChunk. 
	scanner scanForLiteralArrayIfMatch: [].
	self 
		assert: ((scanner instVarNamed: 'result') contents) 
		equals: '#((a (b)) c)'.	

	scanner := TonelSourceScanner on: '#(a (b c))' readStream.
	scanner prepareToScan.
	scanner scanNextChunk; scanNextChunk. 
	scanner scanForLiteralArrayIfMatch: [].
	self 
		assert: ((scanner instVarNamed: 'result') contents) 
		equals: '#(a (b c))'