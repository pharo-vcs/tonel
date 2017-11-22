tests
testScanForCommentIfMatch
	| scanner |
	
	scanner := TonelSourceScanner on: '""' readStream.
	scanner prepareToScan.
	scanner scanNextChunk. 
	scanner scanForCommentIfMatch: [].
	self 
		assert: ((scanner instVarNamed: 'result') contents) 
		equals: '""'.	

	scanner := TonelSourceScanner on: '"simple comment"' readStream.
	scanner prepareToScan.
	scanner scanNextChunk. 
	scanner scanForCommentIfMatch: [].
	self 
		assert: ((scanner instVarNamed: 'result') contents)
		equals: '"simple comment"'.	

	scanner := TonelSourceScanner on: '"multiline 
comment"' readStream.
	scanner prepareToScan.
	scanner scanNextChunk. 
	scanner scanForCommentIfMatch: [].
	self 
		assert: ((scanner instVarNamed: 'result') contents)
		equals: '"multiline 
comment"'.	

	scanner := TonelSourceScanner on: '"simple comment with "" colons inside"' readStream.
	scanner prepareToScan.
	scanner scanNextChunk. 
	scanner scanForCommentIfMatch: [].
	self 
		assert: ((scanner instVarNamed: 'result') contents)
		equals: '"simple comment with "" colons inside"'.	

	scanner := TonelSourceScanner on: '"simple comment with colons at the end"""' readStream.
	scanner prepareToScan.
	scanner scanNextChunk. 
	scanner scanForCommentIfMatch: [].
	self 
		assert: ((scanner instVarNamed: 'result') contents)
		equals: '"simple comment with colons at the end"""'