tests
testScan
	| scanner |

	scanner := TonelSourceScanner on: '[^'''']' readStream.
	self assert: scanner scan equals: '^'''''.
	
	scanner := TonelSourceScanner on: '[
	self 
		at: Object1 put: ''one string'';
		at: Object2 put: ''other string'';
		yourself
]' readStream.
	self 
		assert: scanner scan 
		equals: '
	self 
		at: Object1 put: ''one string'';
		at: Object2 put: ''other string'';
		yourself'