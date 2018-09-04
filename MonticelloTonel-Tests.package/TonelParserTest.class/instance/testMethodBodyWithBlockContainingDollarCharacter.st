tests
testMethodBodyWithBlockContainingDollarCharacter

	self assertParse: '[ $$ ]' rule: #methodBody equals: ' $$'.
	self assertParse: '[$$ ]' rule: #methodBody equals: '$$'.
	self assertParse: '[ $$]' rule: #methodBody equals: ' $$'.
	self assertParse: '[$$]' rule: #methodBody equals: '$$'