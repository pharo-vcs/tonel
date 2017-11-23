tests
testScanMethodWithParserErrors
	| scanner |
	
	scanner := TonelSourceScanner on: '[#(#(''self foo. + 3'' 11) #(''#('' 3) #(''self 0'' 6) #(''self asdf;;asfd'' 11))]' readStream.
	self 
		assert: scanner scan 
		equals: '#(#(''self foo. + 3'' 11) #(''#('' 3) #(''self 0'' 6) #(''self asdf;;asfd'' 11))'