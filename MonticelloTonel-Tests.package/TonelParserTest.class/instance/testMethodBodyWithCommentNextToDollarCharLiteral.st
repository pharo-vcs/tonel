tests
testMethodBodyWithCommentNextToDollarCharLiteral

	self
		assertParse: '[^$$"what about this one]"]'
		rule: #methodBody
		equals: '^$$"what about this one]"'