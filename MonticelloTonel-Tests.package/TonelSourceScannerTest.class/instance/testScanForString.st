tests
testScanForString
	| scanner |

	scanner := TonelSourceScanner on: '''-.*$''' readStream.
	scanner prepareToScan.
	scanner readNext. 
	scanner scanForString.
	self 
		assert: ((scanner instVarNamed: 'result') contents)
		equals: '''-.*$'''.	
	
	scanner := TonelSourceScanner on: '''simple comment ''''with'''' colons enclosing word''' readStream.
	scanner prepareToScan.
	scanner readNext. 
	scanner scanForString.
	self 
		assert: ((scanner instVarNamed: 'result') contents)
		equals: '''simple comment ''''with'''' colons enclosing word'''.	
	
	scanner := TonelSourceScanner on: '''''' readStream.
	scanner prepareToScan.
	scanner readNext. 
	scanner scanForString.
	self 
		assert: ((scanner instVarNamed: 'result') contents) 
		equals: ''''''.	

	scanner := TonelSourceScanner on: '''simple string''' readStream.
	scanner prepareToScan.
	scanner readNext. 
	scanner scanForString.
	self 
		assert: ((scanner instVarNamed: 'result') contents)
		equals: '''simple string'''.	

	scanner := TonelSourceScanner on: '''multiline 
string''' readStream.
	scanner prepareToScan.
	scanner readNext. 
	scanner scanForString.
	self 
		assert: ((scanner instVarNamed: 'result') contents)
		equals: '''multiline 
string'''.	

	scanner := TonelSourceScanner on: '''simple string with '''' colons inside''' readStream.
	scanner prepareToScan.
	scanner readNext. 
	scanner scanForString.
	self 
		assert: ((scanner instVarNamed: 'result') contents)
		equals: '''simple string with '''' colons inside'''.	

	scanner := TonelSourceScanner on: '''simple string with colons at the end''''' readStream.
	scanner prepareToScan.
	scanner readNext. 
	scanner scanForString.
	self 
		assert: ((scanner instVarNamed: 'result') contents)
		equals: '''simple string with colons at the end'''''