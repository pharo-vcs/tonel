tests
testScanMethodWithTerminatingBrackets
	| scanner |

	scanner := TonelSourceScanner on: '[[''-.*$'']]' readStream.
	self
		assert: scanner scan
		equals: '[''-.*$'']'