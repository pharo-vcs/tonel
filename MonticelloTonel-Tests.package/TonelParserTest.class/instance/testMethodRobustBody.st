tests
testMethodRobustBody
	self
		assertParse: '!¿["''#(#{({!'
		rule: #methodBody
		equals: '¿["''#(#{({'.
	self
		assertParse: '!])}¿!'
		rule: #methodBody
		equals: '])}¿'.
	self
		assertParse: '!!!!'
		rule: #methodBody
		equals: '!'.
	self
		assertParse: '!!!a!!!!b!!!'
		rule: #methodBody
		equals: '!a!!b!'.