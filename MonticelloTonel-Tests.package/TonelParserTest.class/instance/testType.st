tests
testType

	self 
		assertParse: 'Class' rule: #type equals: 'Class';
		assertParse: 'Trait' rule: #type equals: 'Trait';
		assertParse: 'Extension' rule: #type equals: 'Extension'